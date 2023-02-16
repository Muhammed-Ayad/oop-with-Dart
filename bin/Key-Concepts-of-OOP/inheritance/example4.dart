class MenuItem {
  String name;
  double price;

  MenuItem(this.name, this.price);

  void showDetails() {
    print("$name - \$${price.toStringAsFixed(2)}");
  }
}

class Food extends MenuItem {
  String description;

  Food(String name, double price, this.description) : super(name, price);

  void showDetails() {
    super.showDetails();
    print(description);
  }
}

class Drink extends MenuItem {
  String size;

  Drink(String name, double price, this.size) : super(name, price);

  void showDetails() {
    super.showDetails();
    print(size);
  }
}

void main() {
  Food spaghetti =
      Food("Spaghetti", 10.99, "Classic Italian pasta with tomato sauce.");
  Drink soda = Drink("Soda", 2.50, "Large");

  spaghetti
      .showDetails(); // "Spaghetti - $10.99\nClassic Italian pasta with tomato sauce."
  soda.showDetails(); // "Soda - $2.50\nLarge"
}
