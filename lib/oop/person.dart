class Person {
  final String firstName;
  final String lastName;
  int age;

  Person({required this.firstName, required this.lastName, required this.age});

  void desc() {
    print("$firstName $lastName says hello!");
  }
}
