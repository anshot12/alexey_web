import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBarBody extends StatefulWidget {
  const BottomNavBarBody({super.key});

  @override
  State<BottomNavBarBody> createState() => _BottomNavBarBodyState();
}

class _BottomNavBarBodyState extends State<BottomNavBarBody> {
  int index = 0;
  List<BottomNavigationBarItem> itemList = const [
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 1'),
        activeIcon: AutoSizeText('Ячейка 1'),
        label: ''),
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 2'),
        activeIcon: AutoSizeText('Ячейка 2'),
        label: ''),
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 3'),
        activeIcon: AutoSizeText('Ячейка 3'),
        label: ''),
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 4'),
        activeIcon: AutoSizeText('Ячейка 4'),
        label: ''),
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 5'),
        activeIcon: AutoSizeText('Ячейка 5'),
        label: ''),
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 6'),
        activeIcon: AutoSizeText('Ячейка 6'),
        label: ''),
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 7'),
        activeIcon: AutoSizeText('Ячейка 7'),
        label: ''),
    BottomNavigationBarItem(
        icon: AutoSizeText('Ячейка 8'),
        activeIcon: AutoSizeText('Ячейка 8'),
        label: ''),
  ];

  @override
  void initState() {
    super.initState();
  }

  void onTap(page) {
    setState(() {
      index = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Theme.of(context).focusColor,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: index,
        onTap: onTap,
        items: itemList);
  }
}
