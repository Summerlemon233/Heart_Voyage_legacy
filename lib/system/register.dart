import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/system/login.dart';

import './userdata.dart';



class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController _controllerMail = new TextEditingController();
  TextEditingController _controllerName = new TextEditingController();
  TextEditingController _controllerPwd = new TextEditingController();
  TextEditingController _controllerRePwd = new TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  String? _emailReg, _passwordReg, _userNameReg;

  bool _isObscure = true;
  Color _eyeColor = Colors.grey;
  final List _loginMethod = [
    {
      "title": "wechat",
      "icon": Icons.wechat,
    },
  ];

  /*bool confirm_if_unique() //async
  {
    if(userdata.totalNum == 0) return true;
    else
    {
    }
  }
// 设置持久化数据
  void _setData() async {
    // 实例化
    if(userdata.totalNum == 0){
    SharedPreferences? userdata_stored= await SharedPreferences.getInstance();
    }
    // 设置string类型
    var totalNum
    setState(() {});
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey, // 设置globalKey，用于后面获取FormStat
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: kToolbarHeight), // 距离顶部一个工具栏的高度
            buildTitle(), // Login
            buildTitleLine(), // Login下面的下划线
            const SizedBox(height: 50),
            buildUserName(), //用户名
            const SizedBox(height: 40,),
            buildEmailTextField(), // 输入邮箱
            const SizedBox(height: 40),
            buildPasswordTextField(context), // 输入密码
            const SizedBox(height: 40),
            buildConfirmPasswordTextField(context), // 确认密码
            const SizedBox(height: 60),

            const SizedBox(height: 40),
            buildRegisterText(context), // 注册
          ],
        ),
      ),
    );
  }

  Widget buildTitleLine() {
    return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            color: Colors.black,
            width: 40,
            height: 2,
          ),
        ));
  }

  Widget buildTitle() {
    return const Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          '注册',
          style: TextStyle(fontSize: 42),
        ));
  }

  Widget buildRegisterText(context) {
    return Align(
      child: SizedBox(
        height: 45,
        width: 270,
        child: ElevatedButton(
          style: ButtonStyle(
            // 设置圆角
            shape: MaterialStateProperty.all(
                const StadiumBorder(side: BorderSide(style: BorderStyle.none))),
            //backgroundColor: MaterialStateProperty.all(Colors.white),
            //foregroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child:
              Text('注册', style: Theme.of(context).primaryTextTheme.headline5),
          onPressed: () {
            _emailReg = _controllerMail.text;
            _userNameReg = _controllerName.text;
            if(_controllerPwd.text != _controllerRePwd.text)
            {
              Get.snackbar('提示', '您的确认密码输入有误。请重新输入。');
              return;
            }
            _passwordReg = _controllerPwd.text;
            if (_emailReg != null &&
                _passwordReg != null &&
                _userNameReg != null) {
              print("$_emailReg,--$_passwordReg,--$_userNameReg");
              User userReg = new User(_userNameReg, _passwordReg, _emailReg);
              IO_Data.writeData(userReg);
              //SharedPreferenceUtil.saveUser(userReg);
              //print(SharedPreferenceUtil.checkUser(userReg));
              if (/*IO_Data.checkUser(userReg)==  */true) {
                print('signin_success');
                Get.snackbar('提示', '注册成功！即将返回登录页面。');
                Future.delayed(Duration(seconds: 3), () {
                  Get.to(login());
                });
              }
            }
          },
        ),
      ),
    );
  }

  Widget buildPasswordTextField(BuildContext context) {
    return TextFormField(
        obscureText: _isObscure, // 是否显示文字
        onSaved: (v) => _passwordReg = v!,
        controller: _controllerPwd,
        validator: (v) {
          if (v!.isEmpty) {
            return '请输入密码，长度请控制在8-16个字符之间。';
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "密码",
            suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {
                // 修改 state 内部变量, 且需要界面内容更新, 需要使用 setState()
                setState(() {
                  _isObscure = !_isObscure;
                  _eyeColor = (_isObscure
                      ? Colors.grey
                      : Theme.of(context).iconTheme.color)!;
                });
              },
            )));
  }

  Widget buildConfirmPasswordTextField(BuildContext context) {
    return TextFormField(
        controller: _controllerRePwd,
        obscureText: _isObscure, // 是否显示文字
        validator: (v) {
          if (v!.isEmpty) {
            return '请再次确认密码。';
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "确认密码",
            suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {
                // 修改 state 内部变量, 且需要界面内容更新, 需要使用 setState()
                setState(() {
                  _isObscure = !_isObscure;
                  _eyeColor = (_isObscure
                      ? Colors.grey
                      : Theme.of(context).iconTheme.color)!;
                });
              },
            )));
  }

  Widget buildEmailTextField() {
    return TextFormField(
      controller: _controllerMail,
      decoration: const InputDecoration(labelText: '邮箱地址'),
      validator: (v) {
        var emailReg = RegExp(
            r"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (!emailReg.hasMatch(v!)) {
          return '请输入正确的邮箱地址';
        }
        return null;
      },
      onSaved: (v) => _emailReg = v!,
    );
  }

  Widget buildUserName() {
    return TextFormField(
      controller: _controllerName,
      decoration: const InputDecoration(labelText: '用户名'),
      validator: (v) {
        if (v!.isEmpty) {
          return '请输入正确的用户名';
        }
        return null;
      },
      onSaved: (v) => _userNameReg = v!,
    );
  }
}

//   TextEditingController _controllerMail = new TextEditingController();
//   TextEditingController _controllerPwd = new TextEditingController();
//   TextEditingController _controllerRePwd = new TextEditingController();
//
//   void _userRegister() {
//       _email=_controllerMail.text;
//       _password=_controllerPwd.text;
//       _password_confirm=_controllerRePwd.text;
//
//       if (_formKey.currentState.validate()) {
//         save();//使用sharedPreferences存储数据
//         Navigator.pop(context);//返回到登陆页面
//       }
//   }
