import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  AppBar _appBar(BuildContext context){
    return AppBar(
      title: const Text('AppBar'),
      elevation: 10,
      centerTitle: true,
      backgroundColor: Colors.redAccent,
      shadowColor: Theme.of(context).colorScheme.shadow,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        tooltip: 'Action example',
        onPressed: (){},
      ),
      actions: <Widget>[
        IconButton(onPressed: (){}, icon: const Icon(Icons.add_alert), tooltip: "Add"),
        IconButton(onPressed: (){}, icon: const Icon(Icons.remove_circle), tooltip: "Remove"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: ListView(
        children: List.generate(1000, (index) => const ListTile(title: Text('Example app bar'))),
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
