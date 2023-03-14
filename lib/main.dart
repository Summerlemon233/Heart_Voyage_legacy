import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/tabs.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) =>runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: '心旅',
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Softbrush',
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        defaultTransition: Transition.circularReveal,
        //onGenerateRoute: onGenerateRoute,
      getPages: [],
        home: Tabs(),
    );
  }
}



