import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/state_widget/screens/add_person_widget.dart';
import 'package:flutter_ui/apps/state_widget/screens/edit_person_widget.dart';
import 'package:flutter_ui/apps/state_widget/screens/person_contact.dart';

class PersonContactsWidget extends StatefulWidget {
  const PersonContactsWidget({super.key});

  @override
  State<PersonContactsWidget> createState() => _PersonContactsWidgetState();
}

class _PersonContactsWidgetState extends State<PersonContactsWidget> {
  List<PersonContact> contacts = [];

  Future<void> _onAddContact(BuildContext context) async {
    final PersonContact? result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddPersonWidget()));
    if (!context.mounted) return;
    if (result == null) return;
    setState(() {
      result.id = contacts.length;
      contacts.add(result);
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(const SnackBar(
          content: Text('New contact added'),
        ));
    });
  }

  Future<void> _onEditContact(BuildContext context, index) async {
    final PersonContact result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EditPersonWidget(initData: contacts[index])));
    if (!context.mounted) return;

    setState(() {
      contacts[result.id] = result;
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text('Contact saved')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact list')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          PersonContact person = contacts[index];
          return ListTile(
            title: Text('${person.firstName} ${person.lastName}'),
            subtitle: Text(person.phone),
            trailing: const Icon(Icons.edit),
            onTap: () async {
              _onEditContact(context, index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _onAddContact(context);
        },
      ),
    );
  }
}
