class Person {
  String _name; // private instance variable
  int _age; // private instance variable

  Person(this._name, this._age); // constructor

  // getters
  String get name => _name;
  int get age => _age;

  // setters
  set name(String name) => _name = name;
  set age(int age) => _age = age;

  // method
  void sayHello() {
    print("Hello, my name is $_name and I am $_age years old.");
  }
}

void main() {
  var person = Person("Mohamed", 25);
  person.sayHello();

  person.name = "Mary";
  person.age = 30;
  person.sayHello();
}
