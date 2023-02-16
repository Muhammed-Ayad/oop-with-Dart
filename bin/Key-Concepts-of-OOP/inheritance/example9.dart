class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void sayHello() {
    print("Hello, my name is $name.");
  }
}

class Student extends Person {
  int studentID;
  String major;

  Student(String name, int age, String address, this.studentID, this.major)
      : super(name, age, address);

  @override
  void sayHello() {
    super.sayHello();
    print("I'm a student majoring in $major.");
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String name, int age, String address, this.subject)
      : super(name, age, address);

  @override
  void sayHello() {
    super.sayHello();
    print("I'm a $subject teacher.");
  }
}

void main() {
  var person = Person("Ahmed", 30, "123 Main St");
  person.sayHello();  

  var student =
      Student("Ali", 20, "555 Elm St", 12345, "Computer Science");
  student
      .sayHello();  

  var teacher = Teacher("Mr. Mohamed", 45, "789 Oak St", "Math");
  teacher.sayHello();  
}
