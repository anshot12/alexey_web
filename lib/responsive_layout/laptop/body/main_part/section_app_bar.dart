import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SectionAppBAr extends StatelessWidget {
  const SectionAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.blue,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                text: 'Секция 1',
              ),
              Tab(
                text: 'Секция 2',
              ),
              Tab(
                text: 'Секция 3',
              ),
              Tab(
                text: 'Секция 4',
              ),
            ],
          ),
        ),
        Spacer(
          flex: 2,
        )
      ],
    );
  }
}

class SectionAppBarBottom extends StatelessWidget {
  const SectionAppBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 2,
          child: TabBar(
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.blue,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(
                text: 'Ячейка 1',
              ),
              Tab(
                text: 'Ячейка 2',
              ),
              Tab(
                text: 'Ячейка 3',
              ),
              Tab(
                text: 'Ячейка 4',
              ),
              Tab(
                text: 'Ячейка 5',
              ),
              Tab(
                text: 'Ячейка 6',
              ),
              Tab(
                text: 'Ячейка 7',
              ),
              Tab(
                text: 'Ячейка 8',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
