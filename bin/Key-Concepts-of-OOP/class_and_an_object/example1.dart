// Define a class called Person
class Person {
  String name = '';
  int age = 0;

  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  // Create an object of the Person class
  var person1 = Person();

  // Set the name and age properties of person1
  person1.name = 'Alice';
  person1.age = 30;

  // Call the sayHello method on person1
  person1.sayHello();

  // Create another object of the Person class
  var person2 = Person();

  // Set the name and age properties of person2
  person2.name = 'Bob';
  person2.age = 40;

  // Call the sayHello method on person2
  person2.sayHello();
}
