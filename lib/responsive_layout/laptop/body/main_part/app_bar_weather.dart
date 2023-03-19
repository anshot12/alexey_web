import 'dart:html';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherAppBAr extends StatelessWidget {
  const WeatherAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 3,
        child: Row(children: [
          FittedBox(
            fit: BoxFit.contain,
            child: const AutoSizeText(
              'Северные широты',
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ]),
      ),
      Spacer(
        flex: 3,
      ),
      AppBarButton(
          title: 'Температура',
          onPressed: () {},
          icon: CupertinoIcons.thermometer),
      AppBarButton(
          title: 'Влажность',
          onPressed: () {},
          icon: Icons.water_drop_outlined),
      AppBarButton(title: 'Ветер', onPressed: () {}, icon: CupertinoIcons.wind),
      AppBarButton(
          title: 'Солнце', onPressed: () {}, icon: CupertinoIcons.sun_min_fill)
    ]);
  }
}

class AppBarButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final IconData icon;

  const AppBarButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
          style: ButtonStyle(
              fixedSize: null,
              maximumSize: null,
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white)),
          onPressed: () {},
          icon: Icon(icon),
          label: AutoSizeText(
            title,
            maxLines: 1,
          )),
    );
  }
}
