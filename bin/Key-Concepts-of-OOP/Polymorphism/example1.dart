abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  var animals = [Dog(), Cat()];
  for (var animal in animals) {
    animal.makeSound();
  }
}
