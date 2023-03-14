import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/canvas/about_star.dart';
import 'package:heart_voyage/pages/canvas/my_rank.dart';
import 'package:heart_voyage/pages/canvas/my_star.dart';

class sailCanvas extends StatefulWidget {
  const sailCanvas({Key? key}) : super(key: key);

  @override
  State<sailCanvas> createState() => _sailCanvasState();
}

class _sailCanvasState extends State<sailCanvas> {
  var former = Column(
    children: [
      SizedBox(
        height: 5,
      ),
      Center(
        child: Text("图片占位"),
      ),
      SizedBox(
        height: 20,
      ),
      Center(
        child: Text("欢迎来到扬帆多元社区！"),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Text("图片占位"),
      ),
      SizedBox(
        height: 50,
      ),
      ElevatedButton(onPressed: () {}, child: Text("说明")),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(my_star());
              },
              child: Text("我的星星")),
          SizedBox(
            width: 60,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(my_rank());
              },
              child: Text("我的排名")),
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fitWidth,
                image:AssetImage('assets/images/universe.jpg')),
          ),
        ),
        Positioned(
          child: Image.asset('assets/images/star.png'),
          top: MediaQuery.of(context).size.height / 19,
          left: MediaQuery.of(context).size.width / 15,
        ),
        Positioned(
          child: Image.asset('assets/images/star.png'),
          top: MediaQuery.of(context).size.height / 23,
          left: MediaQuery.of(context).size.width / 5,
        ),
        Positioned(
          child: Image.asset('assets/images/star.png'),
          top: MediaQuery.of(context).size.height / 15,
          left: MediaQuery.of(context).size.width / 3,
        ),
        Positioned(
          child: Image.asset('assets/images/star.png'),
          top: MediaQuery.of(context).size.height / 10,
          left: MediaQuery.of(context).size.width / 2,
        ),
        Positioned(
          child: Image.asset('assets/images/star.png'),
          top: MediaQuery.of(context).size.height / 6,
          left: MediaQuery.of(context).size.width / 1.75,
        ),
        Positioned(
          child: Image.asset('assets/images/star.png'),
          top: MediaQuery.of(context).size.height / 5.5,
          left: MediaQuery.of(context).size.width / 1.3,
        ),
        Positioned(
          child: Image.asset('assets/images/star.png'),
          top: MediaQuery.of(context).size.height / 9.5,
          left: MediaQuery.of(context).size.width / 1.2,
        ),
        Positioned(
          child: Text(
            "欢迎来到扬帆多元社区！",
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
          top: MediaQuery.of(context).size.height / 3.8,
          left: MediaQuery.of(context).size.width / 5.8,
        ),
        Positioned(
          child: Image.asset('assets/images/big_star.png'),
          top: MediaQuery.of(context).size.height / 3.0,
          left: MediaQuery.of(context).size.width / 2.7,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4.0,
        ),
        Positioned(
          child: ElevatedButton(onPressed: () {
              Get.to(about_star());
          }, child: Text("说明"),),
          top: MediaQuery.of(context).size.height / 1.5,
          left: MediaQuery.of(context).size.width / 2.4,
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.35,
            left: MediaQuery.of(context).size.width / 5,
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(my_star());
                },
                child: Text("我的星星")),
            SizedBox(
              width: 60,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(my_rank());
                },
                child: Text("我的排名")),
          ],
        ))
      ],
    ));
  }
}
