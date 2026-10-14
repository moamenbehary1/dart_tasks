void main() {
  print(calculateCartTotal(prices: [100, 200, 50]));
  print(calculateCartTotal(prices: [100, 200, 50], deliveryFee: 25, taxPercent: 14, discountPercent: 10));
  print(calculateCartTotal(prices: [100, 200, 50], isMember: true, discountPercent: 10, maxDiscount: 12,));
}

double calculateCartTotal( {
  required List<int> prices,
  double discountPercent = 0,
  double taxPercent = 14,
  double deliveryFee = 0,
  bool isMember = false,
  double maxDiscount = 100,
}) {
  double subtotal = 0;
  for (int i = 0; i < prices.length; i++) {
    subtotal += prices[i];
  }
  double totalDiscountPercent = discountPercent;
  if (isMember) {
    totalDiscountPercent += 5;
  }
  if (totalDiscountPercent > maxDiscount) {
    totalDiscountPercent = maxDiscount;
  }
  double discountAmount = subtotal * (totalDiscountPercent / 100);
  double discountedSubtotal = subtotal - discountAmount;
  double taxAmount = discountedSubtotal * (taxPercent / 100);

  return discountedSubtotal + taxAmount + deliveryFee;
}
