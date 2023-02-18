abstract class Vehicle {
  void accelerate();
}

class Car implements Vehicle {
  @override
  void accelerate() {
    print('The car is accelerating');
  }
}

class Bicycle implements Vehicle {
  @override
  void accelerate() {
    print('The bicycle is accelerating');
  }
}

void main() {
  Vehicle vehicle1 = Car();
  Vehicle vehicle2 = Bicycle();

  vehicle1.accelerate();
  vehicle2.accelerate();
}
