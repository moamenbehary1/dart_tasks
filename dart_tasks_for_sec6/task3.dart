void main() {
  Student student1 = Student('Omar', 20, 12345, 95.5);
  
  student1.displayInfo();
}

class Person {
  String _name = '';
  int _age = 0;

  Person(String name, int age) {
    _name = name;
    _age = age;
  }

  String get name {
    return _name;
  }

  int get age {
    return _age;
  }
}

class Student extends Person {
  int studentId = 0;
  double grade = 0;

  Student(String name, int age, int id, double g) : super(name, age) {
    studentId = id;
    grade = g;
  }

  void displayInfo() {
    print(name);
    print(age);
    print(studentId);
    print(grade);
  }
}