import 'dart:math';

class Circle {
  double _radius; // private instance variable

  Circle(this._radius);

  // radius setter
  void set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      throw ArgumentError('Radius must be positive.');
    }
  }

  // radius getter
  double get radius => _radius;

  // diameter getter
  double get diameter => 2 * _radius;

  // circumference getter
  double get circumference => 2 * pi * _radius;

  // area getter
  double get area => pi * pow(_radius, 2);
}

void main() {
  var circle = Circle(5);
  print('Radius: ${circle.radius}');
  print('Diameter: ${circle.diameter}');
  print('Circumference: ${circle.circumference}');
  print('Area: ${circle.area}');

  circle.radius = 10;
  print('Radius: ${circle.radius}');
  print('Diameter: ${circle.diameter}');
  print('Circumference: ${circle.circumference}');
  print('Area: ${circle.area}');

  circle.radius = -5; // throws an ArgumentError
}
