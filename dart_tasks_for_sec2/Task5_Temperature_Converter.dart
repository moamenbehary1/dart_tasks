void main() {
  double celsius = 30;
  /// Convert Celsius to Fahrenheit
  double fahrenheit = (celsius * 9 / 5) + 32;
  print("celsius = ${celsius}°C\nfahrenheit = ${fahrenheit.toStringAsFixed(0)}°F");
  // Output:
  // celsius = 30°C
  // fahrenheit = 86°F
}
