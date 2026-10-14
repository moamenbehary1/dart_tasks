void main() {
  print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12));
  print(
    filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12, includeEven: false),
  );
}

List<int> filterNumbers(
  List<int> numbers, {
  int min = 0,
  int max = 100,
  bool includeEven = true,
}) {
  /* List<int> result = [];
  for (int num in numbers) {
    if (num >= min &&
        num <= max &&
        (includeEven ? num % 2 == 0 : (num % 2 != 0 || num % 2 == 0))) {
      result.add(num);
    } else if (num < min || num > max) {
      print("{{$num}} is Out of range");
    }
  } */

  /* for (int num in numbers) {
    if (num >= min && num <= max) {
      if (includeEven) {
        if (num % 2 == 0) {
          result.add(num);
        }
      } else {
        result.add(num);
      }
    } else if (num < min || num > max) {
      print("{{$num}} is Out of range");
    }
  } */
  //return result;
  return numbers.where((number) {
    bool inRange = number >= min && number <= max;
    bool matchesEvenCondition = !includeEven || (number % 2 == 0);
    return inRange && matchesEvenCondition;
  }).toList();
}
