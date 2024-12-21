import 'package:flutter/material.dart';

Map<int, TableColumnWidth> _tableColumnWidth(){
  return const <int, TableColumnWidth>{
    0: FixedColumnWidth(64),
    1: FlexColumnWidth(),
    2: FlexColumnWidth(),
  };
}

TableRow _tableRow(int num, String name, String birthday){
  return TableRow(
    children: <Widget>[
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Container(
          height: 32,
          width: 32,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(num.toString()),
        )
      ),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            height: 32,
            width: 32,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(name),
          )
      ),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            height: 32,
            width: 32,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text(birthday),
          )
      ),
    ]
  );
}

class TableExampleWidget extends StatelessWidget {
  const TableExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: _tableColumnWidth(),
      children: List.generate(10, (index) => _tableRow(index + 1, "John $index", "01.01.1990")),
    );
  }
}
