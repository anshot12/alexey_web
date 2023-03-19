import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCard extends StatelessWidget {
  final String mainTitle;
  final String secondTitle;
  final Color colorMain;
  final Color colorSecond;
  final TextStyle? textStyle;
  const MyCard(
      {super.key,
      required this.mainTitle,
      required this.secondTitle,
      required this.colorMain,
      required this.colorSecond,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: false,
      shadowColor: Colors.transparent,
      color: Colors.transparent,
      child: Row(children: [
        Expanded(
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade300,
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainTitle,
                maxLines: 2,
                style: textStyle ?? TextStyle(color: colorMain),
              ),
              Text(secondTitle,
                  style: textStyle ?? TextStyle(color: colorSecond))
            ],
          ),
        )
      ]),
    );
  }
}
