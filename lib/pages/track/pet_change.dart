import 'package:flutter/material.dart';
import 'package:heart_voyage/system/userdata.dart';
import 'package:image_card/image_card.dart';

class pet_change extends StatefulWidget {
  const pet_change({Key? key}) : super(key: key);

  @override
  State<pet_change> createState() => _pet_changeState();
}

class _pet_changeState extends State<pet_change> {
  final List<Widget> cards = [];
  final List<String> names_pet = ['狗狗', '狐狐', '小狼', '兔兔'];
  final List<String> cond_pet = ['点击选中', '已选中'];
  var nowSelected = UserState.CurrPet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("更换心宠"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('当前心宠：${names_pet[nowSelected]}'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FillImageCard(
                    imageProvider: AssetImage('assets/images/pet0.png'),
                    tags: [
                      RawChip(
                        label: Text('可选'),
                        selected: true,
                        showCheckmark: true,
                        checkmarkColor: Colors.lightGreenAccent,
                      ),
                      RawChip(
                        label: Text(nowSelected == 0 ? '已选中' : '点击选中'),
                        selected: nowSelected == 0,
                        onSelected: (v) {
                          setState(() {
                            nowSelected = 0;
                          });
                        },
                        selectedColor: Colors.lightGreenAccent,
                        selectedShadowColor: Colors.red,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  FillImageCard(
                    imageProvider: AssetImage('assets/images/pet1.png'),
                    tags: [
                      RawChip(
                        label: Text('可选'),
                        selected: true,
                        showCheckmark: true,
                        checkmarkColor: Colors.lightGreenAccent,
                      ),
                      RawChip(
                        label: Text(nowSelected == 1 ? '已选中' : '点击选中'),
                        selected: nowSelected == 1,
                        onSelected: (v) {
                          setState(() {
                            nowSelected = 1;
                          });
                        },
                        selectedColor: Colors.lightGreenAccent,
                        selectedShadowColor: Colors.red,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  FillImageCard(
                    imageProvider: AssetImage('assets/images/pet2.png'),
                    tags: [
                      RawChip(
                        label: Text('可选'),
                        selected: true,
                        showCheckmark: true,
                        checkmarkColor: Colors.lightGreenAccent,
                      ),
                      RawChip(
                        label: Text(nowSelected == 2 ? '已选中' : '点击选中'),
                        selected: nowSelected == 2,
                        onSelected: (v) {
                          setState(() {
                            nowSelected = 2;
                          });
                        },
                        selectedColor: Colors.lightGreenAccent,
                        selectedShadowColor: Colors.red,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  FillImageCard(
                    imageProvider: AssetImage('assets/images/pet3.png'),
                    tags: [
                      RawChip(
                        label: Text('可选'),
                        selected: true,
                        showCheckmark: true,
                        checkmarkColor: Colors.lightGreenAccent,
                      ),
                      RawChip(
                        label: Text(nowSelected == 3 ? '已选中' : '点击选中'),
                        selected: nowSelected == 3,
                        onSelected: (v) {
                          setState(() {
                            nowSelected = 3;
                          });
                        },
                        selectedColor: Colors.lightGreenAccent,
                        selectedShadowColor: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
