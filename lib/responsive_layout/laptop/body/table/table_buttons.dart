import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTableButtons extends StatelessWidget {
  const MyTableButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BigActionButton(
            title: 'Фотогалерея',
            onPressed: () {},
          ),
          BigActionButton(onPressed: () {}, title: 'Полив'),
          BigActionButton(onPressed: () {}, title: 'Ветер'),
          BigActionButton(onPressed: () {}, title: 'Инсоляция')
        ],
      ),
    );
  }
}

class BigActionButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const BigActionButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: AutoSizeText(title));
  }
}
