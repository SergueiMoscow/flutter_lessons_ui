import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text example')),
      body: _buildText(context),
    );
  }

  Widget _buildText(BuildContext context){
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            width: 50,
            padding: const EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Hello, World!',
              overflow: TextOverflow.ellipsis,
              // overflow: TextOverflow.fade,
            ),
          ),

          Container(
            width: 50,
            padding: const EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Hello, World!',
              overflow: TextOverflow.ellipsis,
              // overflow: TextOverflow.fade,
              maxLines: 2,
            ),
          ),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(border: Border.all()),
            child: const Text.rich(
              TextSpan(
                text: 'Hello, World!',
                children: <TextSpan>[
                  TextSpan(text: 'beautiful', style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]
              ),
              overflow: TextOverflow.ellipsis,
              // overflow: TextOverflow.fade,
              maxLines: 2,
            ),
          ),

        ],
      )
    );
  }
}
