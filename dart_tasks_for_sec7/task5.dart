void main() {
  ShoppingCart cart = ShoppingCart();

  Product laptop = Electronics('Laptop', 1200);
  Product phone = Electronics('Smartphone', 800);
  Product jacket = Clothing('Winter Jacket', 150);
  Product shirt = Clothing('T-Shirt', 40);

  cart.addProduct(laptop);
  cart.addProduct(phone);
  cart.addProduct(jacket);
  cart.addProduct(shirt);

  print('--- Shopping Cart ---');
  cart.displayCart();

  print('Removing Smartphone...');
  cart.removeProduct(phone);

  print('--- Updated Shopping Cart ---');
  cart.displayCart();
}

abstract class Product {
  String name;
  int price;

  Product(this.name, this.price);

  int calculateDiscount();

  int get finalPrice => price - calculateDiscount();
}

class Electronics extends Product {
  Electronics(String name, int price) : super(name, price);

  @override
  int calculateDiscount() {
    return (price * 0.10).toInt();
  }
}

class Clothing extends Product {
  Clothing(String name, int price) : super(name, price);

  @override
  int calculateDiscount() {
    return (price * 0.20).toInt();
  }
}

class ShoppingCart {
  List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
  }

  bool removeProduct(Product product) {
    return _products.remove(product);
  }

  int get totalPrice {
    int total = 0;
    for (var product in _products) {
      total += product.finalPrice;
    }
    return total;
  }

  void displayCart() {
    if (_products.isEmpty) {
      print('The cart is empty.');
      return;
    }

    for (var product in _products) {
      int discount = product.calculateDiscount();
      int netPrice = product.finalPrice;
      print(
        '${product.name} - Original: ${product.price} | Discount: $discount | Final: $netPrice',
      );
    }
    print('Total Price: $totalPrice');
  }
}