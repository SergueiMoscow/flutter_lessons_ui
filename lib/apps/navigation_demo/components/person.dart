class Person {
  String firstName;
  String lastName;

  Person(this.firstName, this.lastName);

  static List<Person> all(){
    return List.generate(20, (index) => Person('Person name №$index', 'Person lastname $index'));
  }
}

class AddPersonToContact {
  bool needAdd;
  Person person;

  AddPersonToContact(this.needAdd, this.person);

}