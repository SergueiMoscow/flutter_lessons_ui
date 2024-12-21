import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      padding: EdgeInsets.all(16.0),
      children: List.generate(100, (index) {
        return Center(
          child: GridTile(
            header: Container(
              height: 40,
              color: Colors.black38,
              child: Center(child: Text('John Stone')),
            ),
            footer: Container(
              height: 40,
              color: Colors.black38,
              child: Center(child: Text('01.01.2001')),
            ),
            child: Image.network(
              'https://images.unsplash.com/photo-1533450718592-29d45635f0a9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
          ),
        );

      }),
    );
    }
}
