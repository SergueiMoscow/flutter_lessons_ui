import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/state_widget/screens/person_contact.dart';

import 'number_format.dart';

class EditPersonWidget extends StatefulWidget {
  const EditPersonWidget({super.key, required this.initData});

  final PersonContact initData;

  @override
  State<EditPersonWidget> createState() => _EditPersonWidgetState();
}

class _EditPersonWidgetState extends State<EditPersonWidget> {
  final _formKey = GlobalKey<FormState>();

  PersonContact personContact = PersonContact();

  @override
  void initState() {
    super.initState();
    setState(() {
      // Чтобы из StatefulWidget передать данные, нужно обратиться через widget:
      personContact = widget.initData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Person')),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              // FirsName
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'First Name',
                ),
                initialValue: personContact.firstName,
                onChanged: (value) {
                  setState(() {
                    personContact.firstName = value;
                  });
                },
                validator: (value) => personContact.validateFirstName(),
              ),
              const SizedBox(height: 16, width: double.infinity,),

              // LastName
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Last Name',
                ),
                initialValue: personContact.lastName,
                onChanged: (value) {
                  setState(() {
                    personContact.lastName = value;
                  });
                },
                validator: (value) => personContact.validateLastName(),
              ),
              const SizedBox(height: 16, width: double.infinity,),

              // Phone
              TextFormField(
                keyboardType: TextInputType.phone,
                autocorrect: false,
                inputFormatters: [
                  NumberFormat(),
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Phone number',
                ),
                initialValue: personContact.phone,
                onChanged: (value) {
                  setState(() {
                    personContact.phone = value;
                  });
                },
                validator: (value) => personContact.validatePhone(),
              ),
              const SizedBox(height: 16, width: double.infinity,),

              /// Buttons
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: personContact.validate() ? (){
                        Navigator.pop(context, personContact);
                      } : null,
                      child: Text(
                          'Save'
                      ),
                    ),
                    SizedBox(),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context, null);
                    }, child: Text('Cancel'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
