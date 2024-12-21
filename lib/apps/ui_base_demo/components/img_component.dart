import 'package:flutter/material.dart';

class ImgComponent extends StatelessWidget {
  const ImgComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Image(
          fit: BoxFit.contain,
          height: 300,
          image: AssetImage('images/bg.jpg'),
        ),
        Image.network(
          height: 300,
          'https://images.unsplash.com/photo-1533450718592-29d45635f0a9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
