class Rectangle {
  double _width; // private instance variable
  double _height; // private instance variable

  Rectangle(this._width, this._height); // constructor

  // area getter
  double get area => _width * _height;

  // perimeter getter
  double get perimeter => 2 * (_width + _height);

  // scale method
  void scale(double factor) {
    _width *= factor;
    _height *= factor;
  }
}

void main() {
  var rect = Rectangle(10, 5);
  print(rect.area);
  print(rect.perimeter);

  rect.scale(2);
  print(rect.area);
  print(rect.perimeter);
}
