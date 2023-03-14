import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/canvas/my_rank.dart';
import 'package:heart_voyage/pages/canvas/my_star.dart';

class about_star extends StatefulWidget {
  const about_star({Key? key}) : super(key: key);

  @override
  State<about_star> createState() => _about_starState();
}

class _about_starState extends State<about_star> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("说明"),),
      body:SafeArea(
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
                top: MediaQuery.of(context).size.height / 9,
                left: MediaQuery.of(context).size.width / 10,
                child: Text(
                  '每天有7次查看其他\n心旅人星星的机会哦',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                child: Text(
                  "你也可以上传自己的星星\n到社区，并获得积分",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                top: MediaQuery.of(context).size.height / 3.8,
                left: MediaQuery.of(context).size.width / 3.4,
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
                child: Text(
                  "在这里，你可以完成多元化任务的打卡并获得积分\n总积分值会进行社区排名和好友排名哦",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 15,
                  ),
                ),
                top: MediaQuery.of(context).size.height / 1.5,
                left: MediaQuery.of(context).size.width / 10,
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
          )),
    );
  }
}
