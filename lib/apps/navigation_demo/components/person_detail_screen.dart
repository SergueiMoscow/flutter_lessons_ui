import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/navigation_demo/components/person.dart';

class PersonDetailScreen extends StatelessWidget {
  const PersonDetailScreen({super.key, required this.person});

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add person to contacts')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('${person.firstName} ${person.lastName}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                child: Text('Yes'),
                onPressed: (){
                  Navigator.pop(context, AddPersonToContact(true, person));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                child: Text('No'),
                onPressed: (){
                  Navigator.pop(context, AddPersonToContact(false, person));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
