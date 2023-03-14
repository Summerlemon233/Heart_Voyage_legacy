import 'package:flutter/material.dart';
import 'package:heart_voyage/pages/heart/anxiety/overall_judge.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/heart/anxiety/refined_judge.dart';

class anxiety_test extends StatefulWidget {
  const anxiety_test({Key? key}) : super(key: key);

  @override
  State<anxiety_test> createState() => _anxiety_testState();
}

class _anxiety_testState extends State<anxiety_test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('焦虑自测'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(overall_judge());
              },
              child: Center(
                  child: Text(
                '焦虑水平\n总体评价',
              ))),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(refined_judge());
              },
              child: Center(
                  child: Text(
                '焦虑水平\n细化评价',
              ))),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(anxiety_test());
              },
              child: Center(
                  child: Text(
                    '焦虑的影响\n测试',
                  ))),
        ],
      )),
    );
  }
}
