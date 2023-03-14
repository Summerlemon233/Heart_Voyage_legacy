import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
import '../pages/tabs.dart';
import './login.dart';
import './register.dart';
import './userdata.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:Text("settings"),
    );
  }
}
