// ignore_for_file: unused_local_variable

void main() {
  List<Map<String, dynamic>> cart = [
    {"productName": "pizza", "price": 150, "quantity": 3},
    {"productName": "burger", "price": 120, "quantity": 7},
    {"productName": "coke", "price": 50, "quantity": 4},
    {"productName": "water", "price": 12.5, "quantity": 2},
  ];
  num totalCp = 0;
  int totalIQ = 0;
  cart.forEach((item) {
    String productName = item["productName"];
    num price = item["price"];
    int quantity = item["quantity"];
    num totalPrice = price * quantity;
    totalCp += totalPrice;
    totalIQ += quantity;
    print(
      "Product: $productName, Price: $price, Quantity: $quantity, Total Price: $totalPrice",
    );
  });
  print("Total Before Discount: $totalCp");
  if(totalCp >=2500){
    double discount = totalCp * 0.10; 
    double TotalP = totalCp - discount;
    print("Total after Discount: $TotalP");
  }
  else{
    print("Total after Discount: $totalCp");
  }
  print("Total Items: $totalIQ");
}
