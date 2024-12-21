import 'package:flutter/material.dart';

class ExpandedExampleWidget extends StatelessWidget {
  const ExpandedExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     height: 300,
    //     color: Colors.black,
    //     child: Column(
    //       children: [
    //         Container(
    //           color: Colors.blue,
    //           width: 50,
    //           height: 50,
    //         ),
    //         Expanded(
    //           child: Container(
    //             color: Colors.amber,
    //             width: 100,
    //             height: 10,
    //           ),
    //         ),
    //         Container(
    //           color: Colors.red,
    //           height: 100,
    //           width: 100,
    //         ),
    //       ],
    //     ));

    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: Center(child: Text('2 Flex')),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
            child: Center(child: Text('3 Flex')),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            child: Center(child: Text('1 Flex')),
          ),
        ),
      ],
    );

  }
}
