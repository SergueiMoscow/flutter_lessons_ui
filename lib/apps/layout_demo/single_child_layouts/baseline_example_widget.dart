import 'package:flutter/material.dart';

class BaselineExampleWidget extends StatelessWidget {
  const BaselineExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Baseline(
            baseline: 50.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'Text 1',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          SizedBox(width: 20),
          Baseline(
            baseline: 50.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'Text 2',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ],
      ),
    );
  }

}
