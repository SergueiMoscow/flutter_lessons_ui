import 'package:flutter/material.dart';

class ContainerExampleWidget extends StatelessWidget {
  const ContainerExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: boxDecoration,
      transform: Matrix4.rotationZ(0.1),
      child: Center(
        child: Text(
          'Styled Container',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    // Пример из урока
    // return Container(
    //   // color: Colors.red,
    //   // padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
    //   // margin: const EdgeInsets.fromLTRB(40, 30, 20, 10),
    //   transform: Matrix4.rotationZ(0.1),
    //   decoration: boxDecoration,
    //   child: Text('Constrained Container'),
    // );
  }
}

final boxDecoration = BoxDecoration(
  color: Colors.green,
  borderRadius: BorderRadius.circular(16),
  boxShadow: [
    BoxShadow(
      color: Colors.red,
      offset: Offset(2, 2),
      blurRadius: 6.0,
    ),
  ],
);
