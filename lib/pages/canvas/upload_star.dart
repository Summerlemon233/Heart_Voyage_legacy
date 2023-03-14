import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/canvas/my_rank.dart';
import 'package:heart_voyage/pages/canvas/my_star.dart';
import 'package:image_picker/image_picker.dart';

class upload_star extends StatefulWidget {
  const upload_star({Key? key}) : super(key: key);

  @override
  State<upload_star> createState() => _upload_starState();
}

class _upload_starState extends State<upload_star> {
  final picker = ImagePicker();
  XFile? _imageFile;
  List<XFile>? _imageFiles;
  int _mode = 0;
  int _typeMode = 0;

  String returnTime() {
    String tmp = "";
    switch (_mode) {
      case 0:
        tmp = "尚未选择";
        break;
      case 1:
        tmp = "0~10分钟";
        break;
      case 2:
        tmp = "10~30分钟";
        break;
      case 3:
        tmp = "30~60分钟";
        break;
      case 4:
        tmp = "60分钟以上";
        break;
      default:
        tmp = "尚未选择";
        break;
    }
    return tmp;
  }

  String returnType() {
    String tmp = "";
    switch (_typeMode) {
      case 0:
        tmp = "尚未选择";
        break;
      case 1:
        tmp = "语言智能";
        break;
      case 2:
        tmp = "逻辑数学智能";
        break;
      case 3:
        tmp = "音乐智能";
        break;
      case 4:
        tmp = "肢体运作智能";
        break;
      case 5:
        tmp = "人际智能";
        break;
      case 6:
        tmp = "空间智能";
        break;
      case 7:
        tmp = "内省智能";
        break;
      case 8:
        tmp = "自然探索智能";
        break;
      case 9:
        tmp = "存在智能";
        break;
      default:
        tmp = "尚未选择";
        break;
    }
    return tmp;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/images/universe.jpg')),
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
            top: MediaQuery.of(context).size.height / 9.5,
            left: MediaQuery.of(context).size.width / 1.2,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Expanded(
                child: Column(
                  children: [
                    Center(
                      child: Text("上传星星"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: '任务描述'),
                    ),
                    Row(
                      children: [
                        Text("所用时间:${returnTime()}"),
                        ElevatedButton(
                            onPressed: () {
                              Get.bottomSheet(
                                Container(
                                  child: ListView(
                                    children: [
                                      ListTile(
                                        title: Text("语言智能"),
                                        subtitle: Text("掌握并运用语言、文字的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 1;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("逻辑数学智能"),
                                        subtitle:
                                            Text("逻辑思维推理、数学运算以及科学分析方面的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 2;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("音乐智能"),
                                        subtitle: Text("感受、欣赏、演奏、歌唱、创作音乐的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 3;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("肢体运作智能"),
                                        subtitle: Text(
                                            "运用全身或身体的某一部分，/n包括嘴和手，解决问题或创造产品的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 4;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("人际智能"),
                                        subtitle: Text(
                                            "了解他人、与人合作的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 5;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("空间智能"),
                                        subtitle: Text(
                                            "针对所观察的事物，/n在脑海中形成一个模型或图案从而加以运用的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 6;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("内省智能"),
                                        subtitle:
                                            Text("深入并理解自己内心世界并用以指导自己行为的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 7;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("自然探索智能"),
                                        subtitle:
                                            Text("能认识植物、动物和其它自然环境(如云和石头)的能力"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 8;
                                          });
                                        },
                                      ),
                                      Divider(),
                                      ListTile(
                                        title: Text("存在智能"),
                                        subtitle: Text(
                                            "人们表现出的对生命、死亡和终极现实提出问题，/n并思考这些问题的倾向性"),
                                        onTap: () {
                                          setState(() {
                                            _typeMode = 9;
                                          });
                                        },
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Text("点我选择")),
                      ],
                    ),
                    Row(
                      children: [
                        Text("类型选择:${returnType()}"),
                        ElevatedButton(onPressed: () {}, child: Text("点我选择")),
                      ],
                    ),
                    Row(
                      children: [
                        Text("点击上传图片："),
                        Container(
                          child:  this._imageFile == null
                              ? Text("请选择图片")
                              : Image.file(File(_imageFile!.path)),
                        )
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                      Get.snackbar('提示', '保存成功');
                    }, child: Text("保存"))
                  ],
                ),
              ),
            )),
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

  _takePhoto() async {
    XFile? pickedFile = await picker.pickImage(
        source: ImageSource.camera, maxHeight: 600, maxWidth: 600);

    if (pickedFile != null) {
      print(pickedFile.path);
      print(File(pickedFile.path));
      setState(() {
        _imageFile = pickedFile;
      });
    }
  }

  //打开文件夹选单张图片
  _openGallery() async {
    XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery, maxHeight: 600, maxWidth: 600);

    if (pickedFile != null) {
      print(pickedFile.path);
      print(File(pickedFile.path));
      setState(() {
        _imageFile = pickedFile;
      });
    }
  }
}
