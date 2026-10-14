void main() {
  print("Total price: ${calculateTotal(50.0, 3)}");
  print("Total price: ${calculateTotal(25.5, 2)}");
}

double calculateTotal(double price, int quantity) {
  double totalPrice = price * quantity;
  return totalPrice;
}
