//This page contains the appBar and appTab of the App.
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/settings.dart';
import 'package:heart_voyage/system/userdata.dart';

import './tabs/sailCanvas.dart';
import './tabs/sailIsland.dart';
import './tabs/sailTrack.dart';
import './tabs/seekHeart.dart';
import '../system/login.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<Widget> _pages = [
    seekHeart(),
    sailIsland(),
    sailCanvas(),
    sailTrack()
  ];
  final List<Widget> _drawer = [drawerListLogined(), drawerListNotLogined()];

  int _currentIndex = 0;
  final int _currentDrawer = UserState.isLogin ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("心旅"),
      ),
      drawer: Drawer(
        child: _drawer[_currentDrawer],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "寻心",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.landscape),
            label: "心岛",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sailing),
            label: "扬帆",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_road),
            label: "航迹",
            backgroundColor: Colors.blue,
          )
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class drawerListLogined extends StatefulWidget {
  const drawerListLogined({Key? key}) : super(key: key);

  @override
  State<drawerListLogined> createState() => _drawerListLoginedState();
}

class _drawerListLoginedState extends State<drawerListLogined> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            UserState.CurrUsername,
            style: TextStyle(color: Colors.black),
          ),
          accountEmail: Text(
            UserState.CurrEmail,
            style: TextStyle(color: Colors.black),
          ),
          currentAccountPicture: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/default_user.jpg'),
          ),
          onDetailsPressed: () {},
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/bkgnd.jpg')),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("设置"),
                onTap: () => Get.to(settings()),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("个人中心"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text("消息中心"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.group_add),
                title: Text("我的好友"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("退出登录"),
                onTap: () {
                  Get.to(login());
                },
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}

class drawerListNotLogined extends StatefulWidget {
  const drawerListNotLogined({Key? key}) : super(key: key);

  @override
  State<drawerListNotLogined> createState() => _drawerListNotLoginedState();
}

class _drawerListNotLoginedState extends State<drawerListNotLogined> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            UserState.CurrUsername,
            style: TextStyle(color: Colors.black),
          ),
          accountEmail: Text(
            UserState.CurrEmail,
            style: TextStyle(color: Colors.black),
          ),
          currentAccountPicture: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/default_user.jpg'),
          ),
          onDetailsPressed: () {},
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/images/bkgnd.jpg')),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.login),
                title: Text("登录"),
                onTap: () {
                  Get.to(login());
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("设置"),
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
