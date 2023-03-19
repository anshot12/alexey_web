import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';

class MyProgressIndicator extends StatelessWidget {
  const MyProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Column(
        children: [
          AutoSizeText(
            'Дней эксперимента: 13/32',
            minFontSize: 16,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          GFProgressBar(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            animation: true,
            animateFromLastPercentage: true,
            percentage: 0.40625,
            lineHeight: 10,
            alignment: MainAxisAlignment.spaceBetween,
            backgroundColor: Colors.grey.shade200,
            progressBarColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
