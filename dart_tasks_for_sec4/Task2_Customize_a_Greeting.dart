void main() {
  print(greetUser("moamen",  "Hi"));
  print(greetUser("memo"));
}

String greetUser(String name, [String greeting = 'Hello']) {
  return '$greeting, $name';
}