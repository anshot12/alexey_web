import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/table/table.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/table/table_buttons.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/table/table_info.dart';
import 'package:flutter_application_1/responsive_layout/laptop/widget/card.dart';

import '../main_part/section_app_bar.dart';

class MainTable extends StatelessWidget {
  const MainTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 1, child: MyTableButtons()),
            Expanded(
              flex: 4,
              child: TableInfo(
                number: 1,
              ),
            ),
          ],
        ),
        bottomNavigationBar: SectionAppBarBottom(),
      ),
    );
  }
}
