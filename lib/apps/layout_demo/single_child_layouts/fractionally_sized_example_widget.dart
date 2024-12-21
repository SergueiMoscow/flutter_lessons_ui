import 'package:flutter/material.dart';

class FractionallySizedExampleWidget extends StatelessWidget {
  const FractionallySizedExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.redAccent,
      child: const FractionallySizedBox(
        alignment: FractionalOffset.center,
        widthFactor: 0.1,
        heightFactor: 0.5,
        child: Placeholder(),
      ),
    );
  }
}
