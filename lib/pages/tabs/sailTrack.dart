import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/my_map.dart';
import 'package:heart_voyage/pages/track/my_pet.dart';
import 'package:heart_voyage/system/common_widgets.dart';
import 'package:heart_voyage/system/userdata.dart';

class sailTrack extends StatefulWidget {
  const sailTrack({Key? key}) : super(key: key);

  @override
  State<sailTrack> createState() => _sailTrackState();
}

class _sailTrackState extends State<sailTrack> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          child: ElevatedButton
            (
            child: Text("查看已解锁的地图"),
            onPressed: ()
            {
                Get.to(my_map());
            },
          ),
        ),
        Image(image: AssetImage('assets/images/Sichuan.png')),
        SizedBox(height: 30,),
        Text("当前省份：${UserState.CurrProvince}"),
        Text("已解锁城市：${UserState.CurrCity}"),
        Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: common_widgets.returnPet(),),
        SizedBox(height: 10,),
        SizedBox(height: 30,),//进度条占位
        Center(child: Text("成长值 ${UserState.score}"),),
        SizedBox(height: 10),
        ElevatedButton(onPressed: ()
        {
          Get.to(my_pet());
        }, child: Text("我的心宠")),
      ],
    ));
  }
}
