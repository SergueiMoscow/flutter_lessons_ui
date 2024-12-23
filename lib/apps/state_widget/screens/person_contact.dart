class PersonContact {
  late int id;
  String firstName;
  String lastName;
  String phone;

  PersonContact()
      : firstName = '',
        lastName = '',
        phone = '';

  PersonContact.of(this.firstName, this.lastName, this.phone);

  @override
  String toString() {
    return 'PersonContact(firstName: $firstName, lastName: $lastName, phone: $phone)';
  }

  String? validateFirstName() {
    if (firstName.isEmpty) return 'Please enter First name';
    return null;
  }

  String? validateLastName() {
    if (lastName.isEmpty) return 'Please enter Last name';
    return null;
  }

  String? validatePhone() {
    if (phone.isEmpty) return 'Please enter phone';
    return null;
  }

  bool validate() {
    return validateFirstName() == null &&
        validateLastName() == null &&
        validatePhone() == null;
  }
}
