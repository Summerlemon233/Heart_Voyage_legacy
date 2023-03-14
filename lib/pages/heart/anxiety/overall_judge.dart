import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heart_voyage/pages/heart/anxiety/check_overall_score.dart';
import 'package:heart_voyage/system/userdata.dart';

class overall_judge extends StatefulWidget {
  const overall_judge({Key? key}) : super(key: key);

  @override
  State<overall_judge> createState() => _overall_judgeState();
}

class _overall_judgeState extends State<overall_judge> {
  double _score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('焦虑自测')),
      body: SafeArea(
        child: Column
          (
          children: [
            SizedBox(height: 10,),
            Center(child:Text('温馨提示')),
            SizedBox(height: 10,),
            Text('在过去的两周里，你生活中有多少天出现以下的症状？\n请选择你认为最符合的选项。'),
            CreateScale('1.感到不安、担心及烦躁'),
            CreateScale('2.不能停止担心或控制不了担心'),
            CreateScale('3.对各种各样的事情过度担心'),
            CreateScale('4.很紧张，很难放松下来'),
            CreateScale('5.非常焦躁，以至无法静坐'),
            CreateScale('6.变得容易烦恼或易被激怒'),
            CreateScale('7.感到好像有什么可怕的事会发生'),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              UserState.moodScore = _score;
              Get.to(check_overall_score(),arguments: _score);
            }, child: Text("点击查看分数")),
          ],
        ),
      ),
    );
  }
  
  CreateScale(String question)
  {
      String? _groupValue = "没有";
      return Column(
        children: [
          Text(question),
          Row(children: [
            Text('没有'),
            Radio(value: "没有", groupValue: _groupValue, onChanged: (value)
            {
              setState(() {
                _groupValue = value;
                _score += 0;
              });
            }),
            Text('偶尔'),
            Radio(value: "偶尔", groupValue: _groupValue, onChanged: (value)
            {
              setState(() {
                _groupValue = value;
                _score += 1;
              });
            })
          ],),
          Row(children: [
            Text('有一半以上时间'),
            Radio(value: "有一半以上时间", groupValue: _groupValue, onChanged: (value)
            {
              setState(() {
                _groupValue = value;
                _score += 2;
              });
            }),
            Text('几乎天天'),
            Radio(value: "几乎天天", groupValue: _groupValue, onChanged: (value)
            {
              setState(() {
                _groupValue = value;
                _score += 3;
              });
            })
          ],)
        ],
      );
  }

}
