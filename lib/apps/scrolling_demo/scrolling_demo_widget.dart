import 'package:flutter/material.dart';

class ScrollingDemoWidget extends StatelessWidget {
  const ScrollingDemoWidget({super.key});

  Widget _buildItem(){
    return const ListTile(
      leading: Icon(Icons.person),
      title: Text('John Stone'),
      subtitle: Text('01.01.2000'),
      trailing: Icon(Icons.edit),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text("Sliver App Bar"),
            floating: true,
            flexibleSpace: Placeholder(),
            expandedHeight: 200,
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => _buildItem(), childCount: 1000)),
        ],
      )
    );
  }
}
