import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/layout_demo/multi_child_layouts/column_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/multi_child_layouts/row_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/multi_child_layouts/stack_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/multi_child_layouts/table_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/align_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/aspect_ratio_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/baseline_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/center_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/container_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/expanded_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/fitted_box_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/fractionally_sized_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/overflow_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/padding_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/sized_box_example_widget.dart';
import 'package:flutter_ui/apps/layout_demo/single_child_layouts/transform_example_widget.dart';

class LayoutDemoApp extends StatelessWidget {
  const LayoutDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Layout examples'),
      ),
      body: const Center(
        // this block for single_child_layouts
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     //
        //     // ContainerExampleWidget(),
        //     // SizedBoxExampleWidget(),
        //     // PaddingExampleWidget(),
        //     // CenterExampleWidget(),
        //     // AlignExampleWidget(),
        //     // AspectRatioExampleWidget(),
        //     // BaselineExampleWidget(),
        //     // ExpandedExampleWidget(),
        //     // TransformExampleWidget(),
        //     // OverflowExampleWidget(),
        //     // FractionallySizedExampleWidget(),
        //     // FittedBoxExampleWidget(),
        //   ],
        // )

        // this block for multi_child_layouts
        // child: ColumnExampleWidget(),
        // child: RowExampleWidget(),
        // child: StackExampleWidget(),
        child: TableExampleWidget(),

      ),

    );
  }
}
