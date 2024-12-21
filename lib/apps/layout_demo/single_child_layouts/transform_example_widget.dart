import 'package:flutter/material.dart';

class TransformExampleWidget extends StatelessWidget {
  const TransformExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: Colors.blueGrey,
        child: Transform(
          alignment: Alignment.topRight,
          transform: Matrix4.skewX(-0.1)..rotateZ(-3.14 / 12.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.red,
            child: const Text('Transform example'),
          ),

        ),
    );
  }
}
