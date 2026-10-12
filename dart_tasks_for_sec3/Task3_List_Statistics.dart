void main() {
  List<int> numbers = [12, 5, 8, 21, 4, 15, 10];
  List<int> numbersG10 = [];
  int sum = 0;
  int min = numbers[0];
  int max = numbers[0];
  int evenCount = 0;
  for (int num in numbers) {
    sum += num;
    if (num < min) {
      min = num;
    }
    if (num > max) {
      max = num;
    }
    if (num % 2 == 0) {
      evenCount++;
    }
    if (num > 10) {
      numbersG10.add(num);
    }
  }
  print("Sum of numbers: $sum");
  print("Minimum number: $min");
  print("Maximum number: $max");
  print("Count of even numbers: $evenCount");
  print("Numbers greater than 10: $numbersG10");
}
