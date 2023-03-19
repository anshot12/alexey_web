import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/bottom_nav_bar.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/main_part/app_bar_weather.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/table/table.dart';
import 'package:flutter_application_1/responsive_layout/laptop/widget/card.dart';
import 'package:flutter_application_1/responsive_layout/laptop/widget/progress.dart';

import 'main_part/section_app_bar.dart';

class LaptopBodyPart extends StatelessWidget {
  const LaptopBodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Expanded(
          child: Row(children: [
            Text('Главная  > '),
            Text('Эксперименты  >'),
            Text('Северные широты')
          ]),
        ),
        backgroundColor: Colors.white,
      ),
      body: DefaultTabController(
        length: 4,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Expanded(child: WeatherAppBAr()),
            ),
            body: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                title: const SectionAppBAr(),
              ),
              body: TabBarView(children: [
                const TableLaptopBody(),
                Container(
                  color: Colors.green.shade500,
                ),
                Container(
                  color: Colors.green.shade400,
                ),
                Container(
                  color: Colors.green.shade300,
                ),
              ]),
            )),
      ),
    );
  }
}
