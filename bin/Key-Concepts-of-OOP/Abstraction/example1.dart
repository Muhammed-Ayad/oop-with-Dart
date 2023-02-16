abstract class Animal {
  String get name;
  String get sound;

  void makeSound() {
    print('$name says $sound');
  }
}

class Dog extends Animal {
  String name;
  String sound;

  Dog(this.name, this.sound);
}

