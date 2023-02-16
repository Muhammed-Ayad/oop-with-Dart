abstract class Shape {
  double get area;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double get area => length * width;
}

class Triangle extends Shape {
  final double base;
  final double height;

  Triangle(this.base, this.height);

  @override
  double get area => 0.5 * base * height;
}

void main() {
  final shapes = <Shape>[
    Circle(10),
    Rectangle(5, 8),
    Triangle(4, 6),
  ];

  for (final shape in shapes) {
    print('${shape.runtimeType} has an area of ${shape.area}');
  }
}
