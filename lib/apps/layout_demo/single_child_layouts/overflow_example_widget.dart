import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OverflowExampleWidget extends StatelessWidget {
  const OverflowExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
      child: const OverflowBox(
        maxWidth: 200,
        maxHeight: 200,
        fit: OverflowBoxFit.deferToChild,
        // fit: OverflowBoxFit.max,
        child: Placeholder(),
      ),
    );

    // Это сработало как child элемент body, не сработало внутри Center(Column(children: [.. один из children]))
    // return SingleChildScrollView(
    //   child: Column(
    //     children: List.generate(20, (index) {
    //       return Container(
    //         padding: EdgeInsets.all(16.0),
    //         child: Text('Item $index'),
    //       );
    //     }),
    //   ),
    // );

  }
}
