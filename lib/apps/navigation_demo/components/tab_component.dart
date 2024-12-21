import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/list_demo/components/grid_view_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/long_list_widget.dart';
import 'package:flutter_ui/apps/list_demo/components/simple_list_widget.dart';

class TabComponent extends StatelessWidget {
  const TabComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs demo'),
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.directions), text: 'Simple list'),
                Tab(icon: Icon(Icons.list_sharp), text: 'Long list'),
                Tab(icon: Icon(Icons.grid_3x3), text: 'Simple grid'),
              ]),
          ),
          body: const TabBarView(children: [
            SimpleListWidget(),
            LongListWidget(),
            GridViewWidget(),
          ]),
        ),
    );
  }
}
