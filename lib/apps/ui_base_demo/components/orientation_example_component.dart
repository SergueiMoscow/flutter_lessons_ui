import 'package:flutter/material.dart';

class OrientationExampleComponent extends StatelessWidget {
  const OrientationExampleComponent({super.key});

  Widget _buildPortrait(){
    return const Center(child: Text('portrait'));
  }
  Widget _buildLandscape(){
    return const Center(child: Text('landscape'));
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation){
      return orientation == Orientation.landscape
          ? _buildLandscape()
          : _buildPortrait();
    });
  }
}
