import 'package:flutter/material.dart';

class ElevatedButtonComponent extends StatelessWidget {
  const ElevatedButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Example')),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                print('OnPressed');
              },
              onLongPress: () {
                print('LongPress');
              },
              onHover: (hasPointer) {
                print('OnHover $hasPointer');
              },
              child: Text('simple')),
          ElevatedButton(
              style: style,
              onPressed: null,
              onLongPress: null,
              onHover: (hasPointer) {
                print('OnHover $hasPointer');
              },
              child: const Text('disabled')),
          ElevatedButton(
              style: style,
              onPressed: (){}, child: const Text('Enabled')),
        ],
      ),
    );
  }
}
