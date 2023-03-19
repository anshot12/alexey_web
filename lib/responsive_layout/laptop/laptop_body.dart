import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive_layout/laptop/app_bar/laptop_app_bar.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/laptop_body_part.dart';
import 'package:flutter_application_1/responsive_layout/laptop/widget/card.dart';

class LaptopBody extends StatefulWidget {
  const LaptopBody({super.key});

  @override
  State<LaptopBody> createState() => _LaptopBodyState();
}

class _LaptopBodyState extends State<LaptopBody> {
  int _selectedIndex = 0;

  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ПРО ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Icon(
              Icons.school,
              color: Colors.white,
            ),
            Text(
              ' ЛАБ',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
          icon: Icon(CupertinoIcons.lab_flask_solid),
          label: Text('Эксперименты'),
          onPressed: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.sunny_snowing),
            label: Text('Микроклимат')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(CupertinoIcons.tree),
            label: Text('Растения')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {}, icon: Icon(Icons.school), label: Text('Учителя')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(CupertinoIcons.person_3_fill),
            label: Text('Классы')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(CupertinoIcons.globe),
            label: Text('Регионы')),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(CupertinoIcons.person_2),
            label: Text('Сменить пользователя')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
            label: Text('Выйти из аккаунта')),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton.icon(
            onPressed: () {},
            icon: Icon(CupertinoIcons.gear),
            label: Text('Выйти из аккаунта')),
      ),
      MyCard(
        textStyle: TextStyle(color: Colors.white),
        mainTitle: 'Петрова Ольга Александровна',
        secondTitle: 'e-mail@mail.org',
        colorMain: Colors.black,
        colorSecond: Colors.black,
      ),
    ];

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: list,
              ),
            ),
          ),
          Expanded(flex: 5, child: LaptopBodyPart()),
        ],
      ),
    );
  }
}
