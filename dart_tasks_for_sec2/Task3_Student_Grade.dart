void main() {
  double math = 90;
  double science = 80;
  double english = 95;
  /// Calculate total and average
  double total = math + science + english;
  double average = total / 3;
  print("Math: ${math.toInt()}\nScience: ${science.toInt()}\nEnglish: ${english.toInt()}\nTotal = ${total.toInt()}\nAverage = ${average.toStringAsFixed(2)}");
  // Output:
  // Math: 90
  // Science: 80
  // English: 95
  // Total = 265
  // Average = 88.33
}
