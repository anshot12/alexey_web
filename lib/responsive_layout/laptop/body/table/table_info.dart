import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/responsive_layout/laptop/body/table/table.dart';

import '../../widget/card.dart';

class TableInfo extends StatelessWidget {
  final int number;
  const TableInfo({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    double tableHeidht = MediaQuery.of(context).size.height / 2;

    const OlgaCard = MyCard(
      mainTitle: 'Петрова Ольга Александровна',
      secondTitle: '11 Б класс',
      colorMain: Colors.black,
      colorSecond: Colors.black,
    );
    const Plant = MyCard(
      mainTitle: 'Aspidosperma',
      secondTitle: 'quebracho-blanco',
      colorMain: Colors.black,
      colorSecond: Colors.black,
    );
    return SingleChildScrollView(
      child: DataTable(
        dataRowHeight: tableHeidht / 5,
        headingRowHeight: tableHeidht / 10,
        dataRowColor: const MaterialStatePropertyAll<Color>(Colors.white),
        headingRowColor: MaterialStatePropertyAll<Color>(Colors.grey.shade300),
        columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
                child: Text(
              'Ячейка',
              textAlign: TextAlign.center,
            )),
          ),
          DataColumn(
            label: Expanded(
                child: Text(
              'Кашпо',
              textAlign: TextAlign.center,
            )),
          ),
          DataColumn(
            label: Expanded(
              flex: 2,
              child: Text(
                'Растение',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Дата',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              flex: 2,
              child: Text(
                'Обучающийся',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(''),
            ),
          ),
        ],
        rows: <DataRow>[
          MyDataRow(Plant: Plant, OlgaCard: OlgaCard, number: number),
          MyDataRow(Plant: Plant, OlgaCard: OlgaCard, number: number),
          MyDataRow(Plant: Plant, OlgaCard: OlgaCard, number: number),
          MyDataRow(Plant: Plant, OlgaCard: OlgaCard, number: number),
          MyDataRow(Plant: Plant, OlgaCard: OlgaCard, number: number)
        ],
      ),
    );
  }
}

class MyDataRow extends DataRow {
  final Widget Plant;
  final Widget OlgaCard;
  final int number;

  MyDataRow({
    required this.Plant,
    required this.OlgaCard,
    required this.number,
  }) : super(
          cells: <DataCell>[
            DataCell(Expanded(child: Text('Ячейка №$number'))),
            DataCell(Text('Кашпо №1')),
            DataCell(Plant),
            DataCell(Text('01.01.2023')),
            DataCell(OlgaCard),
            DataCell(Expanded(child: Text('Редактировать'))),
          ],
        );
}
