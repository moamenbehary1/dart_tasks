void main() {
  double mark1 = 78.5;
  double mark2 = 64.0;
  double mark3 = 52.5;
  double total = calculateTotal(mark1, mark2, mark3);
  double average = calculateAverage(total);
  String result = getResult(average);
  print('Mark 1:  $mark1');
  print('Mark 2:  $mark2');
  print('Mark 3:  $mark3');
  print('----------------------');
  print('Total:   $total');
  print('Average: $average');
  print('Result:  $result');
}



double calculateTotal(double a, double b, double c) {
  return a + b + c;
}
double calculateAverage(double total) {
  return total / 3;
}
// double calculateAverage(double total) => total / 3.0
String getResult(double average) {
  if (average >= 50.0) {
    return 'Pass';
  }
  return 'Fail';
}

