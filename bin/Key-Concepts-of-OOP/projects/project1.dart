// In this example, we have defined four classes: 
// Vehicle, Person, Car, and Truck. The Vehicle and Person classes are abstract,
// meaning that they cannot be instantiated directly, but instead serve as blueprints for other classes to extend.
// The Car and Truck classes extend the Vehicle class, inheriting its properties and methods. 
// The Employee and Customer classes extend the `Person


// Abstract class representing a generic vehicle
abstract class Vehicle {
  String get make;
  String get model;
  int get year;

  void start();
  void stop();
}

// Abstract class representing a generic person
abstract class Person {
  String get name;
  int get age;
  String get address;
  double get salary;

  void greet();
}

// Concrete class representing a car
class Car extends Vehicle {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void start() {
    print("Starting $make $model...");
  }

  void stop() {
    print("Stopping $make $model...");
  }
}

// Concrete class representing a truck
class Truck extends Vehicle {
  String make;
  String model;
  int year;

  Truck(this.make, this.model, this.year);

  void start() {
    print("Starting $make $model...");
  }

  void stop() {
    print("Stopping $make $model...");
  }
}

// Concrete class representing an employee
class Employee extends Person {
  String name;
  int age;
  String address;
  double salary;

  Employee(this.name, this.age, this.address, this.salary);

  void greet() {
    print("Hello, my name is $name.");
  }

  void work() {
    print("$name is working...");
  }
}

// Concrete class representing a customer
class Customer extends Person {
  String name;
  int age;
  String address;
  double salary;

  Customer(this.name, this.age, this.address, this.salary);

  void greet() {
    print("Welcome, my name is $name.");
  }

  void purchase(Vehicle vehicle) {
    print("$name is purchasing a ${vehicle.year} ${vehicle.make} ${vehicle.model}...");
  }
}

// Concrete class representing a car dealership
class Dealership {
  List<Vehicle> vehicles = [];
  List<Employee> employees = [];

  void addVehicle(Vehicle vehicle) {
    vehicles.add(vehicle);
  }

  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void greetCustomers() {
    print("Welcome to our dealership!");
    for (Employee employee in employees) {
      employee.greet();
    }
  }

  void sellVehicle(Customer customer, Vehicle vehicle) {
    customer.purchase(vehicle);
  }
}

// Main function
void main() {
  // Create a dealership and add some employees and vehicles
  Dealership dealership = Dealership();
  dealership.addEmployee(Employee("John", 25, "123 Main St", 30000));
  dealership.addEmployee(Employee("Jane", 30, "456 Elm St", 40000));
  dealership.addVehicle(Car("Ford", "Mustang", 2022));
  dealership.addVehicle(Truck("Chevrolet", "Silverado", 2021));

  // Greet customers and sell some vehicles
  dealership.greetCustomers();
  Customer customer = Customer("Mary", 28, "789 Maple St", 50000);
  dealership.sellVehicle(customer, dealership.vehicles.first);
}
