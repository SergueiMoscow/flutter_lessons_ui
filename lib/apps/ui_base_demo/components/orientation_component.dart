import 'package:flutter/material.dart';

class OrientationComponent extends StatelessWidget {
  const OrientationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation){
      return GridView.count(
        crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
        children: List.generate(100, (index) {
          return Center(
            child: Text('Item $index', style: Theme.of(context).textTheme.displayLarge),
          );
        }),
      );
    });
  }
}
