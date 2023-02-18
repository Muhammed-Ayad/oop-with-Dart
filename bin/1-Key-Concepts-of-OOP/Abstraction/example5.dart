abstract class Character {
  void move();
  void attack(Character enemy);
  int get health;
  bool get isAlive;
}

class PlayerCharacter extends Character {
  int _health = 100;
  bool _isAlive = true;

  @override
  void move() {
    // implementation
  }

  @override
  void attack(Character enemy) {
    // implementation
  }

  @override
  int get health => _health;

  @override
  bool get isAlive => _isAlive;
}
