// ignore_for_file: prefer_const_constructors, unnecessary_this, avoid_print

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/common_widgets.dart';
import 'package:image_picker/image_picker.dart';

class sports extends StatefulWidget {
  sports({Key? key}) : super(key: key);

  @override
  State<sports> createState() => _sportsState();
}

class _sportsState extends State<sports> {
  final picker = ImagePicker();
  XFile? _imageFile;
  List<XFile>? _imageFiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImagePicker"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text(
                    '运动消耗200卡路里\n（不限运动）视为打卡成功，\n请在下方上传照片凭证。'
                    , textAlign: TextAlign.center,),
                  this._imageFile == null
                      ? Text("请选择图片")
                      : Image.file(File(_imageFile!.path)),
                  ElevatedButton(
                      onPressed: _takePhoto, child: const Text("拍照")),
                  ElevatedButton(
                      onPressed: _openGallery, child: const Text("打开相册")),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  if (this._imageFile != null) {
                    common_widgets.returnDialog(10);
                  } else {
                    Get.snackbar('提示', '打卡失败。请重新选择图片。');
                  }
                },
                child: Text('打卡'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Get.snackbar('提示', '您暂无打卡记录。');
                },
                child: Text('查看打卡日历'),
              ),
            )
          ],
        ),
      ),
    );
  }

  //拍照
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

  // 选多张图片
  _selectMultiImage() async {
    List<XFile>? images = await picker.pickMultiImage();
    if (images != null) {
      setState(() {
        _imageFiles = images;
      });
    }
  }
}
