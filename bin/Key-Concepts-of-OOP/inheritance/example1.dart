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
