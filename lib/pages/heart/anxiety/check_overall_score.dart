import 'package:get/get.dart';
import 'package:flutter/material.dart';

class check_overall_score extends StatefulWidget {
  const check_overall_score({Key? key}) : super(key: key);

  @override
  State<check_overall_score> createState() => _check_overall_scoreState();
}

class _check_overall_scoreState extends State<check_overall_score> {
  var score = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('查看分数',)),
      body: Column(
        children: [
          Text('0-4分：没有焦虑症，请注意自我保重。'),
          Text('5-9分：可能有轻微焦虑症，建议您咨询心理医生或心理医学工作者。'),
          Text('10-13分：可能有中度焦虑症，您最好咨询心理医生或心理医学工作者。'),
          Text('14-18分：可能有中重度焦虑症，建议您咨询心理医生或精神科医生。'),
          Text('19-21分：可能有重度焦虑症，请一定要看心理医生或精神科医生。'),
          SizedBox(height: 30,),
          Text('你的焦虑分数为：'),
          Container(
            child: Text("${score}分"),
          ),
        ],
      ),
    );
  }
}
