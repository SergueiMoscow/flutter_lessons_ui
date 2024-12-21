import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/list_demo/components/grid_view_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/long_list_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/simple_list_widget.dart';

class ListDemoWidget extends StatelessWidget {
  const ListDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Example'), backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      // body: SimpleListWidget(),
      // body: GridViewWidget(),
      body: LongListWidget(),
    );
  }
}
