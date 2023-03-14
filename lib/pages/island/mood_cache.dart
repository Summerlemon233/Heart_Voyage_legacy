import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/island/mood_cache_new.dart';

class mood_cache extends StatefulWidget {
  const mood_cache({Key? key}) : super(key: key);

  @override
  State<mood_cache> createState() => _mood_cacheState();
}

class _mood_cacheState extends State<mood_cache> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的积极日记'),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 100,
              child: ListView(
                children: [
                  ListTile(
                    title: Text(''),
                  ),
                  Divider(),
                ],
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.to(mood_cache_new());
        },
      ),
    );
  }
}
