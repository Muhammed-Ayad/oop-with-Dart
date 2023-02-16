// In object-oriented programming, a constructor is a special method that is used to initialize objects
// when they are created. When you create an object of a class,
// the constructor is called automatically to set up the object's initial state.
// In Dart, a constructor is defined with the same name as the class and can take zero or more parameters.
// The constructor can then use these parameters to initialize the properties of the object.

class Shape {
  double area;

  Shape(this.area);

  void calculateArea() {
    print('The area of the shape is $area');
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height) : super(width * height);
}

class Square extends Rectangle {
  Square(double side) : super(side, side);
}

class Circle extends Shape {
  double radius;

  Circle(this.radius) : super(3.14159 * radius * radius);
}

void main() {
  var rectangle = Rectangle(4, 5);
  rectangle.calculateArea();

  var square = Square(5);
  square.calculateArea();

  var circle = Circle(3);
  circle.calculateArea();
}
