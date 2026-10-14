void main() {
  print("Total price: ${calculateOrder(price: 10, quantity: 5)}");
  print("Total price: ${calculateOrder(price: 20, quantity: 2, discount: 5)}");
  print("Total price: ${calculateOrder(price: 30, quantity: 3, deliveryFee: 10)}");

}

double calculateOrder(
  { required double price,
  required int quantity, 
  double discount = 0,
  double deliveryFee = 0,}
) {
  double totalPrice = price * quantity;
  double totalAmount = (totalPrice - discount) + deliveryFee;
  return totalAmount;
}
