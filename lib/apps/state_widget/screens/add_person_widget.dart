import 'package:flutter/material.dart';
import 'package:flutter_ui/apps/state_widget/screens/number_format.dart';
import 'package:flutter_ui/apps/state_widget/screens/person_contact.dart';

class AddPersonWidget extends StatefulWidget {
  const AddPersonWidget({super.key});

  @override
  State<AddPersonWidget> createState() => _AddPersonWidgetState();
}

class _AddPersonWidgetState extends State<AddPersonWidget> {
  final _formKey = GlobalKey<FormState>();
  PersonContact personContact = PersonContact();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Person to contact')),
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
                          'Submit'
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
