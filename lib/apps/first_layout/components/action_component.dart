import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/first_layout/components/button_component.dart';

class ActionComponent extends StatelessWidget {
  const ActionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtonComponent(color: color, icon: Icons.call, label: 'Call'),
          ButtonComponent(color: color, icon: Icons.near_me, label: 'Route'),
          ButtonComponent(color: color, icon: Icons.share, label: 'Share'),
        ],
      ),
    );
  }
}
