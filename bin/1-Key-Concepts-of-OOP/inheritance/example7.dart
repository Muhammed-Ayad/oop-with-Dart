class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void introduce() {
    print("My name is $name and I am $age years old.");
  }
}

class Passenger extends Person {
  String ticketNumber;

  Passenger(this.ticketNumber, String name, int age) : super(name, age);

  void showTicket() {
    print("Ticket number: $ticketNumber");
  }
}

class Pilot extends Person {
  String licenseNumber;

  Pilot(this.licenseNumber, String name, int age) : super(name, age);

  void flyPlane() {
    print("I am flying the plane with license number $licenseNumber.");
  }
}

void main() {
  Passenger passenger1 = Passenger("1234", "Ahmed", 25);
  Pilot pilot1 = Pilot("5678", "Mohamed", 35);

  passenger1.introduce();
  passenger1.showTicket();

  pilot1.introduce();
  pilot1.flyPlane();
}
