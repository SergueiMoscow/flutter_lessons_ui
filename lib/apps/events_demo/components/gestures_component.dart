import 'package:flutter/material.dart';

class GesturesComponent extends StatelessWidget {
  const GesturesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () {
              print('OnTap detected');
            },
            onTapCancel: () {
              print('OnTap cancelled');
            },
            onTapDown: (details) {
              print('onTapDown detected: $details');
            },
            onHorizontalDragStart: (details) {
              print('HorizontalDragStart ${details.globalPosition.dx}.');
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(8)),
              child: Text('Gesture handler'),
            )));
  }
}
