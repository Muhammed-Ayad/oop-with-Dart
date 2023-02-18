// In this example, we have an abstract class Product that defines the properties and methods for a product.
// We have two concrete classes Clothing and Electronics that inherit from Product. These classes implement the calculateTax method,
// which is a polymorphic behavior, to calculate the tax for the product.
// We also have an abstract class ShoppingCart that defines the properties and methods for a shopping cart.
// This class has two concrete classes CustomerCart and BusinessCart that inherit from it. These classes encapsulate the logic for adding and removing items from the shopping cart, and they also implement the calculateTotal method, which is another polymorphic behavior, to calculate the total cost of the items in the cart.
// In the main function, we create some products, and then we create a customer's shopping cart and a business's shopping cart.
// We add some items to each cart, and then we calculate the total cost of the items in each cart.


// Abstract class for the product
abstract class Product {
  String name;
  double price;

  Product(this.name, this.price);

  void getInfo() {
    print("Name: $name, Price: \$${price.toStringAsFixed(2)}");
  }

  double calculateTax();
}

// Concrete class for clothing
class Clothing extends Product {
  String size;

  Clothing(String name, double price, this.size) : super(name, price);

  @override
  double calculateTax() {
    return price * 0.06;
  }
}

// Concrete class for electronics
class Electronics extends Product {
  String manufacturer;
  int warranty;

  Electronics(String name, double price, this.manufacturer, this.warranty)
      : super(name, price);

  @override
  double calculateTax() {
    return price * 0.08;
  }
}

// Abstract class for the shopping cart
abstract class ShoppingCart {
  List<Product> items = [];

  void addItem(Product item) {
    items.add(item);
  }

  void removeItem(Product item) {
    items.remove(item);
  }

  double calculateTotal() {
    double total = 0.0;

    for (var item in items) {
      total += item.price + item.calculateTax();
    }

    return total;
  }
}

// Concrete class for the customer's shopping cart
class CustomerCart extends ShoppingCart {
  String customerId;

  CustomerCart(this.customerId);
}

// Concrete class for the business's shopping cart
class BusinessCart extends ShoppingCart {
  String businessName;

  BusinessCart(this.businessName);
}

void main() {
  // Creating some products
  var shirt = Clothing("T-Shirt", 20.0, "M");
  var tv = Electronics("TV", 500.0, "Samsung", 2);
  var phone = Electronics("Phone", 700.0, "Apple", 1);

  // Creating a customer's shopping cart and adding items
  var customerCart = CustomerCart("123");
  customerCart.addItem(shirt);
  customerCart.addItem(tv);
  customerCart.addItem(phone);

  // Creating a business's shopping cart and adding items
  var businessCart = BusinessCart("ABC Inc.");
  businessCart.addItem(tv);
  businessCart.addItem(phone);

  // Calculating totals for the shopping carts
  var customerTotal = customerCart.calculateTotal();
  var businessTotal = businessCart.calculateTotal();

  print("Customer's total: \$${customerTotal.toStringAsFixed(2)}");
  print("Business's total: \$${businessTotal.toStringAsFixed(2)}");
}
