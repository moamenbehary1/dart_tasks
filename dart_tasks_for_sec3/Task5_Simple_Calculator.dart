import 'dart:math';

void main() {
  int number1 = 2;
  int number2 = 0;
  String operator = "^";
  num result = 0;
  switch (operator) {
    case "+":
      result = number1 + number2;
    case "-":
      result = number1 - number2;
    case "*":
      result = number1 * number2;
    case "/":
      if (number2 != 0) {
        result = number1 ~/ number2;
      } else {
        print("Cannot divide by zero");
      }
    case "%":
      result = number1 % number2;
    case "^":
      result = pow(number1, number2);
    default:
      print("Invalid operator");
  }
  print(" Expression: $number1 $operator $number2 = $result");
}
