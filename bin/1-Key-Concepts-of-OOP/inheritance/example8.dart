class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void speak() {
    print("My name is $name, and I am $age years old.");
  }
}

class Employee extends Person {
  String jobTitle;
  double salary;

  Employee(String name, int age, String address, this.jobTitle, this.salary)
      : super(name, age, address);

  void work() {
    print(
        "$name is working as a $jobTitle and earns \$${salary.toStringAsFixed(2)} per year.");
  }
}

class Manager extends Employee {
  List<Employee> employees;

  Manager(String name, int age, String address, String jobTitle, double salary)
      : employees = [],
        super(name, age, address, jobTitle, salary);

  void hire(Employee employee) {
    employees.add(employee);
    print("$name has hired ${employee.name}.");
  }

  void fire(Employee employee) {
    employees.remove(employee);
    print("$name has fired ${employee.name}.");
  }

  void listEmployees() {
    print("$name's employees:");
    employees.forEach((employee) => print("- ${employee.name}"));
  }
}

class Customer extends Person {
  double balance;

  Customer(String name, int age, String address, this.balance)
      : super(name, age, address);

  void buy(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print(
          "$name has purchased an item for \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Error: Insufficient funds.");
    }
  }
}

void main() {
  Employee ali =
      Employee("Ali", 30, "123 Main St", "Software Developer", 100000.0);
  Employee alaa =
      Employee("Alaa", 36, "123 Main St", "Software Developer", 1500000.0);
  Employee ahmed =
      Employee("Ahmed", 25, "123 Main St", "Software Developer", 15500000.0);
  Customer mohamed = Customer("Mohamed", 25, "456 Oak St", 500.0);
  Manager bob = Manager("Ahmed", 45, "789 Maple St", "Director", 150000.0);

  ali.speak();
  ali.work();
  mohamed.speak();
  mohamed.buy(75.0);
  bob.speak();
  bob.hire(ali);
  bob.hire(alaa);
  bob.fire(ahmed);
  bob.listEmployees();
}
