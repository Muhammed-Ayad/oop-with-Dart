// In Dart, extends and implements are used to establish a relationship between classes.
// When a class A extends another class B, it means that A is a subclass of B.
// This establishes an inheritance relationship between A and B, with A inheriting all the properties
// and methods of B, and possibly adding new properties and methods of its own.
// When a class A implements an interface B, it means that A guarantees to provide
// an implementation for all the methods and properties defined in B.
// This establishes a "contract" between A and B, where A promises to have a certain set of properties and methods,
// and can be treated as an instance of B.
// The main difference between extends and implements is that extends establishes a relationship of inheritance,
// while implements establishes a relationship of contract or interface. When a class A extends a class B,
// it is a more tightly coupled relationship than when A implements an interface B. Subclasses that extend a class inherit the entire
// implementation of the superclass, whereas classes that implement an interface have more freedom to define their own
// implementation of the interface methods.

// Here's an example to illustrate the difference:

class Animal {
  void makeSound() {
    print('Generic animal sound');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

abstract class Vehicle {
  void start();
  void stop();
}

class Car implements Vehicle {
  @override
  void start() {
    print('Starting the car');
  }

  @override
  void stop() {
    print('Stopping the car');
  }
}
