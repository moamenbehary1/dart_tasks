void main() {
  Product p1 = Product('Laptop', 101);
  p1.price = 1200;
  p1.quantity = 5;

  Product p2 = Product('Mouse', 102);
  p2.price = 25.5;
  p2.quantity = 20;

  Product p3 = Product('Keyboard', 103);
  p3.price = 75;
  p3.quantity = 10;

  List<Product> inventory = [p1, p2, p3];

  for (var product in inventory) {
    print('${product.name} (ID: ${product.id}) - Total Value: \$${product.calculateTotalValue()}');
  }

  double totalValue = calculateTotalInventoryValue(inventory);
  print('-----------------------------------------');
  print('Total Inventory Value: \$$totalValue');
  print('-----------------------------------------');

  int searchId = 102;
  Product? found = findProduct(inventory, searchId);
  if (found != null) {
    print('Found product with ID $searchId: ${found.name}');
  } else {
    print('Product with ID $searchId not found.');
  }

  print('\nUpdating stock for Mouse:');
  found?.updateStock(5);
  print('New stock: ${found?.quantity}');

  found?.updateStock(-30);
  print('Stock remains: ${found?.quantity}');

  print('\nTesting negative validations:');
  found?.price = -10;
  found?.quantity = -5;
}

Product? findProduct(List<Product> products, int id) {
  for (var product in products) {
    if (product.id == id) {
      return product;
    }
  }
  return null;
}

double calculateTotalInventoryValue(List<Product> products) {
  double total = 0;
  for (var product in products) {
    total = total + product.calculateTotalValue();
  }
  return total;
}

class Product {
  String name;
  int id;
  double _price = 0;
  int _quantity = 0;

  Product(this.name, this.id);

  double get price {
    return _price;
  }

  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print('Error: Price cannot be negative.');
    }
  }

  int get quantity {
    return _quantity;
  }

  set quantity(int value) {
    if (value >= 0) {
      _quantity = value;
    } else {
      print('Error: Quantity cannot be negative.');
    }
  }

  void updateStock(int amount) {
    if (_quantity + amount >= 0) {
      _quantity = _quantity + amount;
    } else {
      print('Error: Stock update rejected. Quantity cannot drop below 0.');
    }
  }

  double calculateTotalValue() {
    return _price * _quantity;
  }
}