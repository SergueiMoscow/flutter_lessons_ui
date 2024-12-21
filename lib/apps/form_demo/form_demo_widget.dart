import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/form_demo/component/form_component.dart';
import 'package:flutter_ui/apps/form_demo/component/snack_bar_component.dart';

class FormDemoWidget extends StatelessWidget {
  const FormDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        // child: FormComponent(),
        child: SnackBarComponent(),
      ),
    );
  }
}
