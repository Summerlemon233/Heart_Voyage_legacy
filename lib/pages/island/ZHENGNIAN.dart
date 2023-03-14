import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/island/ZHENGNIAN/ZHENGNIAN_breathe.dart';
import 'package:heart_voyage/pages/island/ZHENGNIAN/ZHENGNIAN_grape.dart';
import 'package:heart_voyage/pages/island/ZHENGNIAN/ZHENGNIAN_scan.dart';
import 'package:heart_voyage/pages/island/ZHENGNIAN/ZHENGNIAN_sit.dart';
import 'package:heart_voyage/pages/island/ZHENGNIAN/ZHENGNIAN_space.dart';

class ZHENGNIAN extends StatefulWidget {
  const ZHENGNIAN({Key? key}) : super(key: key);

  @override
  State<ZHENGNIAN> createState() => _ZHENGNIANState();
}

class _ZHENGNIANState extends State<ZHENGNIAN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("正念练习"),
      ),
      body: const practicePage(),
    );
  }
}

class practicePage extends StatefulWidget {
  const practicePage({Key? key}) : super(key: key);

  @override
  State<practicePage> createState() => _practicePageState();
}

class _practicePageState extends State<practicePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 1400,
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const SizedBox(
                  height: 70,
                  width: 70,
                  child: Image(
                    image: AssetImage('assets/images/ZHENGNIAN.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                title: const Text('正念觉察呼吸'),
                subtitle: const Text('所需时长：12分36秒'),
                onTap: () => Get.to(ZHENGNIAN_breathe()),
              ),
              const Divider(),
              ListTile(
                leading: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image(
                    image: AssetImage('assets/images/sport.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                title: Text('正念进食葡萄干'),
                subtitle: Text('所需时长：17分52秒'),
                onTap: () => Get.to(ZHENGNIAN_grape()),
              ),
              const Divider(),
              ListTile(
                leading: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image(
                    image: AssetImage('assets/images/pure_music.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                title: Text('正念扫描身体'),
                subtitle: Text('所需时长：15分53秒'),
                onTap: () => Get.to(ZHENGNIAN_scan()),
              ),
              const Divider(),
              ListTile(
                leading: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image(
                    image: AssetImage('assets/images/massage.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                title: Text('正念静坐'),
                subtitle: Text('所需时长：14分57秒'),
                onTap: () => Get.to(ZHENGNIAN_sit()),
              ),
              const Divider(),
              ListTile(
                leading: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image(
                    image: AssetImage('assets/images/white_noise.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                title: Text('三步呼吸空间'),
                subtitle: Text('所需时长：1分56秒'),
                onTap: () => Get.to(ZHENGNIAN_space()),
              ),
              const Divider(),
            ],
          )),
      Text('注：该正念系列音频由北京大学\n心理与认知科学学院刘兴华研究员课题组提供'),
    ]);
  }
}
