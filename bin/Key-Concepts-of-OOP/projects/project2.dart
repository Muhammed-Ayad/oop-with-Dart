// In this example, we have an abstract Person class that defines the introduce() method.
// The Student and Teacher classes inherit from the Person class and implement their own version of the introduce() method.
// We also have an example of encapsulation with the School class, which has a private _people list 
// and public methods to add people to the list and list all people in the list.
// Finally, we have an example of polymorphism with the doSomething() function that takes a Person object 
// and calls its introduce() method, regardless of whether the object is a Student or a Teacher.


// Abstract class
abstract class Person {
  void introduce();
}

// Inherited classes
class Student extends Person {
  final String name;
  final int age;
  
  Student({required this.name, required this.age});
  
  void introduce() {
    print('Hi, my name is $name and I am $age years old.');
  }
  
  void study() {
    print('I am studying.');
  }
}

class Teacher extends Person {
  final String name;
  final int age;
  
  Teacher({required this.name, required this.age});
  
  void introduce() {
    print('Hello, my name is $name and I am $age years old.');
  }
  
  void teach() {
    print('I am teaching.');
  }
}

// Encapsulation
class School {
  final List<Person> _people = [];
  
  void addPerson(Person person) {
    _people.add(person);
  }
  
  void listPeople() {
    for (var person in _people) {
      person.introduce();
    }
  }
}

// Polymorphism
void doSomething(Person person) {
  person.introduce();
}

void main() {
  var school = School();
  var student = Student(name: 'John', age: 20);
  var teacher = Teacher(name: 'Jane', age: 35);
  school.addPerson(student);
  school.addPerson(teacher);
  school.listPeople();
  
  doSomething(student);
  doSomething(teacher);
}
