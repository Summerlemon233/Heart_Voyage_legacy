import 'package:flutter/material.dart';
import 'package:get/get.dart';

class treehole extends StatefulWidget {
  const treehole({Key? key}) : super(key: key);

  @override
  State<treehole> createState() => _treeholeState();
}

class _treeholeState extends State<treehole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('吐苦水树洞'),),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text('To:树洞'),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                        hintText: "请输入多行文本", border: OutlineInputBorder()),
                  ),
                  Text(
                    '有什么不开心的事',
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '可以和树洞讲讲看呀',
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(onPressed: () {
                    Get.back();
                  }, child: Text('让坏情绪飞远')),
                  //ElevatedButton(onPressed: (){}, child: child)
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.brown,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(2.0))),
            ),
          ],
        ));
  }
}