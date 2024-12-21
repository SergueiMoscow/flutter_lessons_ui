import 'package:flutter/material.dart';

class SimpleListWidget extends StatelessWidget {
  const SimpleListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.person),
          title: Text('John Stone'),
          subtitle: Text('19.05.2000'),
          trailing: Icon(Icons.edit),
        ),
      ]
    );
  }
}
