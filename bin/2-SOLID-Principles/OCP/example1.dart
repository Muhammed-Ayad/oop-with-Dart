// Open-Closed Principle (OCP): A class should be open for extension but closed for modification,
// meaning that you should be able to extend its behavior without modifying its source code.

// Correct Example:
abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

void main() {
  List<Shape> shapes = [Rectangle(10, 20), Circle(5)];
  for (Shape shape in shapes) {
    print('The area of the shape is ${shape.area()}');
  }
}


// Incorrect Example:

/*
class Shape {
  double area() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

void main() {
  List<Shape> shapes = [Rectangle(10, 20), Circle(5)];
  for (Shape shape in shapes) {
    print('The area of the shape is ${shape.area()}');
  }
}
*/