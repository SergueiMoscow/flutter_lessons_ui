import 'package:flutter/material.dart';

class TextFontsComponent extends StatelessWidget {
  const TextFontsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'String example - Ubuntu sample',
            style: TextStyle(fontFamily: 'Ubuntu'),
          ),
          Text(
            'String example - Roboto sample',
            style: TextStyle(fontFamily: 'Roboto'),
          ),
          Text(
            'String example - Default sample',
          ),
        ],
      ),
    );
  }
}
