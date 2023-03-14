import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/island/mood_cache.dart';
import 'package:heart_voyage/pages/island/practice.dart';
import 'package:heart_voyage/pages/island/treehole.dart';

class sailIsland extends StatefulWidget {
  const sailIsland({Key? key}) : super(key: key);

  @override
  State<sailIsland> createState() => _sailIslandState();
}

class _sailIslandState extends State<sailIsland> {
  @override
  Widget build(BuildContext context) {
    return Column
      (
      children:
      [
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          Get.to(treehole());
        }, child: Text("吐苦水树洞")),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Get.to(mood_cache());
        }, child: Text("愉快情绪寄存站")),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Get.to(practice());
        }, child: Text("情绪练习")),
        SizedBox(height: 40,),
        Container
          (
          child: Center
            (
            child:Text("图片占位"),
          ),
        )
      ],
    );
  }
}
