import 'package:flutter/material.dart';

class IconsComponent extends StatelessWidget {
  const IconsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Icon(
        Icons.fort,
        color: Colors.pink,
        size: 32,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
      Icon(
        Icons.audiotrack,
        color: Colors.green,
        size: 32,
      ),
      Icon(
        Icons.offline_bolt,
        color: Colors.yellow,
        size: 64,
      ),
    ]);
  }
}
