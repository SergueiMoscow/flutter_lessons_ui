import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/first_layout/components/action_component.dart';
import 'package:flutter_ui/apps/first_layout/components/description_component.dart';
import 'package:flutter_ui/apps/first_layout/components/image_component.dart';
import 'package:flutter_ui/apps/first_layout/components/title_component.dart';

class FirstLayoutWidget extends StatelessWidget {
  const FirstLayoutWidget({super.key});

  // final String image = "https://en.wikipedia.org/wiki/Moscow#/media/File:Saint_Basil's_Cathedral_and_the_Red_Square.jpg";
  final String image = 'https://upload.wikimedia.org/wikipedia/commons/a/ad/Starbuckscenter.jpg';
  final String name = 'Object name';
  final String location = 'Object location';
  final String description = 'Description object';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('First layout'),
      ),
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ImageComponent(image: image),
              TitleComponent(name: name, location: location),
              DescriptionComponent(description: description),
              ActionComponent(),
            ]
          )
      ),
    );
  }
}
