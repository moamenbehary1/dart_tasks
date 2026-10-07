void main() {
  double laptop = 25000;
  double mouse = 500;
  double keyboard = 1200;
  /// Calculate total price, discount, and final price
  double Total_price = laptop + mouse + keyboard;
  double discount = 0.1*Total_price;
  double discounted_price = Total_price * (1 - 0.1);
  print("Laptop Price = ${laptop.toInt()}\nMouse Price = ${mouse.toInt()}\nKeyboard Price = ${keyboard.toInt()}\n\n\nTotal Price = ${Total_price.toInt()}\nDiscount = ${discount.toStringAsFixed(0)}\nFinal_Price = ${discounted_price.toStringAsFixed(0)}");
  // Output:
  // Laptop Price = 25000
  // Mouse Price = 500
  // Keyboard Price = 1200
  // 
  // 
  // Total Price = 29500
  // Discount = 2950
  // Final_Price = 26500
}
