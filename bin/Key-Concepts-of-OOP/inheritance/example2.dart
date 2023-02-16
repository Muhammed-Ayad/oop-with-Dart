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
