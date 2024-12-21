import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/basic_widgets_demo/components/text_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/img_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/orientation_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/orientation_example_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/text_fonts_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/theme_component.dart';
import 'package:flutter_ui/apps/ui_base_demo/components/video_component.dart';

class UiBaseDemoWidget extends StatelessWidget {
  const UiBaseDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // for all except video
    // return Scaffold(
    //   appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text('Fonts')),
    //   // body: const OrientationExampleComponent(),
    //   // body: const OrientationComponent(),
    //   // body: const ThemeComponent(),
    //   // body: const TextFontsComponent(),
    //   body: const ImgComponent(),
    // );
    return const VideoComponent();
  }
}
