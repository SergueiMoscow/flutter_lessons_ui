import 'package:flutter/material.dart';

class ScaffoldComponent extends StatelessWidget {
  const ScaffoldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black12,
        alignment: Alignment.center,
        child: Text('Hello, world'),
      ),
      appBar: AppBar(
        title: const Text('Scaffold'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => (),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50),
      ),

    );
  }
}
