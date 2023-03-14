import 'package:flutter/material.dart';

class check_in extends StatefulWidget {
  const check_in({Key? key}) : super(key: key);

  @override
  State<check_in> createState() => _check_inState();
}

class _check_inState extends State<check_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("每日打卡"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              height: 300,
            ),
            SizedBox
              (
              height: 40,
            ),
            ElevatedButton(onPressed: (){}, child: Text("今日已签到"))
          ],
        ));
  }
}
