import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/laptop_body_part.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/table/main_table.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/table/table_buttons.dart';
import 'package:flutter_application_1/responsive_layout/laptop/widget/card.dart';
import 'package:flutter_application_1/responsive_layout/laptop/widget/progress.dart';

class TableLaptopBody extends StatelessWidget {
  const TableLaptopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              children: const [
                Expanded(
                  child: MyCard(
                    mainTitle: 'Константинов Олег Викторович',
                    secondTitle: 'Преподаватель',
                    colorMain: Colors.black,
                    colorSecond: Colors.blue,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Expanded(child: MyProgressIndicator()),
              ],
            )),
        body: const MainTable());
  }
}
