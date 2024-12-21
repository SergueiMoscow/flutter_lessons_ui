import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/layout_demo/multi_child_layouts/column_example_widget.dart';

class StackExampleWidget extends StatelessWidget {
  const StackExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black45,
                ]
            )
          ),
          // child: ColumnExampleWidget(),
        ),
        const ColumnExampleWidget()
      ]
    );
  }
}
