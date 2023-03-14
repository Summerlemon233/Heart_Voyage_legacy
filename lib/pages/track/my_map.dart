import 'package:flutter/material.dart';
import 'package:get/get.dart';

class my_map extends StatefulWidget {
  const my_map({Key? key}) : super(key: key);

  @override
  State<my_map> createState() => _my_mapState();
}

class _my_mapState extends State<my_map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("心旅",)),
      body: SafeArea
        (
        child: ListView
          (
          children: [
            ListTile(title: Text("四川"),),
            Divider(),
            ListTile(title: Text("湖南"),),
            Divider(),
            ListTile(title: Text("北京"),),
            Divider(),
            ListTile(title: Text("上海"),),
            Divider(),
            ListTile(title: Text("重庆"),),
            Divider(),
            ListTile(title: Text("广州"),),
            Divider(),
            ListTile(title: Text("香港"),),
            Divider(),
          ],
        ),
      ),
    );
  }
}
