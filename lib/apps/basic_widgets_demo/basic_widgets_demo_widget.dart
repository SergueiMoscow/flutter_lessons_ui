import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/basic_widgets_demo/components/app_bar_component.dart';
import 'package:flutter_ui/apps/basic_widgets_demo/components/elevated_button_component.dart';
import 'package:flutter_ui/apps/basic_widgets_demo/components/icons_component.dart';
import 'package:flutter_ui/apps/basic_widgets_demo/components/scaffold_component.dart';
import 'package:flutter_ui/apps/basic_widgets_demo/components/text_component.dart';

class BasicWidgetsDemoWidget extends StatelessWidget {
  const BasicWidgetsDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return const ScaffoldComponent();
    // return const AppBarComponent();
    // return const IconsComponent();
    // return const TextComponent();
    return const ElevatedButtonComponent();
  }
}
