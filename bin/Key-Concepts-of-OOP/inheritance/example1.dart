// In Dart, super is a keyword that allows you to call a method, property, 
// or constructor of the superclass or parent class from a subclass or child class.
// When you create a subclass, it inherits all the properties and methods of its parent class.
// However, you may need to override a method or property in the subclass to provide a different implementation.
// In such cases, you can use the super keyword to call the parent class implementation of the method or property.
// For example, in the following code, we have a parent class called Person and a child class called Student that extends Person.
// The Student class overrides the greet() method defined in Person 
class Person {
  String name;

  Person(this.name);

  void introduce() {
    print('Hi, my name is $name.');
  }
}

class Employee extends Person {
  String jobTitle;

  Employee(String name, this.jobTitle) : super(name);

  void work() {
    print('I am a $jobTitle.');
  }
}

void main() {
  var employee = Employee('Mohamed', 'Software Engineer');
  employee.introduce();
  employee.work();
}
