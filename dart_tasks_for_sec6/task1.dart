void main() {
  Student s1 = Student('Ali', 20, 85.5);

  print(s1.name);
  print(s1.age);
  print(s1.grade);

  s1.age = -5;
  print(s1.age); 
}

class Student {
  String _name = '';
  int _age = 0;
  double _grade = 0;

  Student(String n, int a, double g) {
    name = n;
    age = a;
    grade = g;
  }

  String get name {
    return _name;
  }

  set name(String value) {
    _name = value;
  }

  int get age {
    return _age;
  }

  set age(int value) {
    if (value > 0) {
      _age = value;
    }
  }

  double get grade {
    return _grade;
  }

  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    }
  }
}