import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/common_widgets.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:table_calendar/table_calendar.dart';

import './utils.dart';

class sign extends StatefulWidget {
  @override
  _signState createState() => _signState();
}

class _signState extends State<sign> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  late LinkedHashMap myEvents = returnMyEvents();
  bool _isTodaysigned = UserState.isTodaysigned;

  returnMyEvents() {
    var _myEventSource = Map.fromIterable(List.generate(120, (index) => 1),
        key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item),
        value: (item) => List.generate(item % 1, (index) => Event('本日未签到~')))
      ..addAll({
        kToday: [
          UserState.isTodaysigned ? Event('今日已签到，获得10点成长值~') : Event('今日未签到，请点击下方按钮签到打卡~'),
        ],
      });
    return LinkedHashMap<DateTime, List<Event>>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_myEventSource);
  }

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
    myEvents = returnMyEvents();
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    if (day.isAfter(DateTime.now()))
      return [];
    else
      return myEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('每日打卡'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TableCalendar<Event>(
              locale: 'zh_CN',
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              rangeStartDay: _rangeStart,
              rangeEndDay: _rangeEnd,
              calendarFormat: _calendarFormat,
              rangeSelectionMode: _rangeSelectionMode,
              eventLoader: _getEventsForDay,
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(
                // Use `CalendarStyle` to customize the UI
                outsideDaysVisible: true,
              ),
              onDaySelected: _onDaySelected,
              onRangeSelected: _onRangeSelected,
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ValueListenableBuilder<List<Event>>(
                valueListenable: _selectedEvents,
                builder: (context, value, _) {
                  return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ListTile(
                          onTap: () => print('${value[index]}'),
                          title: Text('${value[index]}'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text("点这里进行签到~"),
                onPressed: () {
                  setState(() {
                    UserState.isTodaysigned = true;
                    print(UserState.isTodaysigned);
                    UserState.score += 10;
                  });
                  Get.defaultDialog(
                      textConfirm: "关闭",
                      confirmTextColor: Colors.white,
                      onConfirm: () {
                        Get.back();
                      },
                      title: "每天学点心理学",
                      content: Column(
                        children: [
                          Container(
                            child: Text(getDate()),
                            alignment: Alignment.topRight,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text("图片占位"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text("说明占位"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
