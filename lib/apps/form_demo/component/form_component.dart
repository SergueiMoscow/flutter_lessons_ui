import 'package:flutter/material.dart';

class FormComponent extends StatefulWidget {
  const FormComponent({super.key});

  @override
  State<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'username',
            ),
            onChanged: (value){
              print('TextFormField.username.onChanged: $value');
            },
            validator: (value){
              if (value == null || value.isEmpty) {
                return 'Please enter username';
              }
              return null;
            },
          ),

          const SizedBox(width: double.infinity, height: 16),

          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'email',
            ),
            onChanged: (value){
              print('TextFormField.email.onChange: $value');
            },
            validator: (value){
              if (value == null || value.isEmpty) return 'Please, enter email';
              // source: https://stackoverflow.com/questions/201323/how-can-i-validate-an-email-address-using-a-regular-expression
              bool emailIsValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
              ).hasMatch(value);
              if (!emailIsValid) return 'Please enter a valid email';
              return null;
            },
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: (){
                  if (_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Data submit'))
                    );
                  }
                },
                child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
