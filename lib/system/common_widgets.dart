
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:heart_voyage/system/userdata.dart';

String getDate()
{
  DateTime now = DateTime.now();
  String temp = now.year.toString();
  temp += "年";
  temp += now.month.toString();
  temp += "月";
  temp += now.day.toString();
  temp += "日";
  return temp;
}

class common_widgets {
  static returnDialog(int rewards) {
      return Get.defaultDialog(
        title: "提示",
        content: Column(
          children: [
            Text("恭喜您！您已经完成练习。\n您将增加10个成长值~"),
            SizedBox(height: 30,),
            Text("+${rewards}",style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 30,
            ),),
            SizedBox(height: 20,),
            Text("总成长值：${UserState.score}分"),
          ],
        )
      );
  }

  static Widget? returnPet()
  {
    switch(UserState.CurrPet)
    {
      case 0:
        return Image(image: AssetImage('assets/images/pet0.png'));
      case 1:
        return Image(image: AssetImage('assets/images/pet1.png'));
      case 2:
        return Image(image: AssetImage('assets/images/pet2.png'));
      case 3:
        return Image(image: AssetImage('assets/images/pet3.png'));
      default:
        return Image(image: AssetImage('assets/images/pet0.png'));
    }
  }
}
