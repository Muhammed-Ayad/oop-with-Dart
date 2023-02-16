class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void introduceYourself() {
    print('Hi, my name is $name. I am $age years old and I live at $address.');
  }
}

class Student extends Person {
  int grade;
  String major;

  Student(String name, int age, String address, this.grade, this.major)
      : super(name, age, address);

  void introduceYourself() {
    super.introduceYourself();
    print('I am a $major major in grade $grade.');
  }

  void study() {
    print('I am studying for my exams.');
  }
}

class Teacher extends Person {
  String subject;
  int yearsOfExperience;

  Teacher(String name, int age, String address, this.subject,
      this.yearsOfExperience)
      : super(name, age, address);

  void introduceYourself() {
    super.introduceYourself();
    print('I teach $subject and have $yearsOfExperience years of experience.');
  }

  void teach() {
    print('I am teaching my class.');
  }
}

void main() {
  var student =
      Student('Ahmed', 18, '123 Main St', 12, 'Computer Science');
  student.introduceYourself();
  student.study();

  var teacher = Teacher('Mohamed', 35, '456 Elm St', 'Mathematics', 10);
  teacher.introduceYourself();
  teacher.teach();
}
