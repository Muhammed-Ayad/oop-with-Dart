class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    print('$name is eating.');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  void bark() {
    print('$name is barking.');
  }
}

class Cat extends Animal {
  String color;

  Cat(String name, int age, this.color) : super(name, age);

  void meow() {
    print('$name is meowing.');
  }
}

void main() {
  var dog = Dog('Max', 5, 'Labrador Retriever');
  var cat = Cat('Mittens', 3, 'Black and White');

  dog.eat();
  dog.bark();

  cat.eat();
  cat.meow();
}
