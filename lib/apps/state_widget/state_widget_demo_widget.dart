import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/state_widget/screens/add_person_widget.dart';
import 'package:flutter_ui/apps/state_widget/screens/person_contacts_widget.dart';

class StateWidgetDemoWidget extends StatelessWidget {
  const StateWidgetDemoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return const AddPersonWidget();
    return const PersonContactsWidget();
  }
}
