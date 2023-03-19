import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget laptopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.laptopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else {
          return laptopBody;
        }
      },
    );
  }
}
