// In object-oriented programming, a constructor is a special method that is used to initialize objects
// when they are created. When you create an object of a class,
// the constructor is called automatically to set up the object's initial state.
// In Dart, a constructor is defined with the same name as the class and can take zero or more parameters.
// The constructor can then use these parameters to initialize the properties of the object.
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

void main() {
  var person = Person('John', 25);
  print('Name: ${person.name}, Age: ${person.age}');
}
