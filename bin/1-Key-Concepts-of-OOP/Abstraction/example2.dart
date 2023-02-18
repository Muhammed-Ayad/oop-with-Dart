abstract class Vehicle {
  void start();
  void stop();

  void go() {
    print('Vehicle is moving');
  }
}

class Car extends Vehicle {
  void start() {
    print('Car is starting');
  }

  void stop() {
    print('Car is stopping');
  }
}
