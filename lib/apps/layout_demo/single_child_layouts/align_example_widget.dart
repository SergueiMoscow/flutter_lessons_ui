import 'package:flutter/material.dart';

class AlignExampleWidget extends StatelessWidget {
  const AlignExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 400,
        child: Container(
          color: Colors.red,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Hello, World!"),
          ),
        ),
      ),
    );
  }
}
