import 'package:flutter/material.dart';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class mood_cache_new extends StatefulWidget {
  const mood_cache_new({Key? key}) : super(key: key);

  @override
  State<mood_cache_new> createState() => _mood_cache_newState();
}

class _mood_cache_newState extends State<mood_cache_new> {
  final picker = ImagePicker();
  XFile? _imageFile;
  List<XFile>? _imageFiles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('新的积极日记'),),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        hintText: "在这里输入标题", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                        hintText: "请输入多行文本", border: OutlineInputBorder()),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  this._imageFile == null
                      ? Text("请选择图片")
                      : Image.file(File(_imageFile!.path)),
                  SizedBox(height: 50,),
                  ElevatedButton(onPressed: () {
                    Get.snackbar('提示', '保存成功~');
                    Get.back();
                  }, child: Text('保存')),
                  //ElevatedButton(onPressed: (){}, child: child)
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.brown,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(2.0))),
            ),
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
