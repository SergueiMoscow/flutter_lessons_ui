import 'package:flutter/material.dart';

class CenterExampleWidget extends StatelessWidget {
  const CenterExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      // widthFactor: 400,
      heightFactor: 40,
      child: Text('Hello, World!'),
    );
  }
}
