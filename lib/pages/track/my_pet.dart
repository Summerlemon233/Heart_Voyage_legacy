import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/track/pet_change.dart';
import 'package:heart_voyage/system/common_widgets.dart';

class my_pet extends StatefulWidget {
  const my_pet({Key? key}) : super(key: key);

  @override
  State<my_pet> createState() => _my_petState();
}

class _my_petState extends State<my_pet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的心宠"),),
      body: SafeArea
        (
        child: Column
          (
          children: [
            Align(
              child: common_widgets.returnPet(),
              alignment: Alignment.center,
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
                Get.to(pet_change());
            }, child: Text("更换心宠")),
          ],
        ),
      ),
    );
  }
}
