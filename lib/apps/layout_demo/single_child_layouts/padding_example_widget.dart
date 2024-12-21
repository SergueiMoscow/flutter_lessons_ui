import 'package:flutter/material.dart';

class PaddingExampleWidget extends StatelessWidget {
  const PaddingExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Placeholder(color: Colors.blue),
    );
  }
}
