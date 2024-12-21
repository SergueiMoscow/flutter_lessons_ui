import 'package:flutter/material.dart';

class SizedBoxExampleWidget extends StatelessWidget {
  const SizedBoxExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 800.0,
        height: 200.0,
        child: Card(color: Colors.redAccent, child: Text('Hello, world!')));
  }
}
