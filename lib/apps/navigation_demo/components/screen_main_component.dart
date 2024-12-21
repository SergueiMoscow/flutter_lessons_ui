import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/navigation_demo/components/screen_second_component.dart';

class ScreenMainComponent extends StatelessWidget {
  const ScreenMainComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenSecondComponent()),
              );
            },
            child: const Text('Open next screen'),
        ),
      ),
    );
  }
}
