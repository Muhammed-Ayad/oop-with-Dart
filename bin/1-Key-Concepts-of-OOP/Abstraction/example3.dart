abstract class Animal {
  String name;

  Animal(this.name);

  factory Animal.create(String name) {
    if (name == 'dog') {
      return Dog(name);
    } else if (name == 'cat') {
      return Cat(name);
    } else {
      throw ArgumentError('Invalid animal type');
    }
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
}

class Cat extends Animal {
  Cat(String name) : super(name);
}
