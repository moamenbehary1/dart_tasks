void main() {
  final student1 = Student('moamen', 20, 85.5);
  final student2 = Student('mega', 22, 47);
  final student3 = Student('hamo', 19, 92);
  final List<Student> students = [student1, student2, student3];
  print('=== Student  ===');
  for (final student in students) {
    student.displayInfo();
  }
  print('=== Top ===');
  final topStudent = findTopStudent(students);
  print('${topStudent.name} has the highest grade: ${topStudent.grade}');
}

class Student {
  String name;
  int age;
  double grade;
  Student(this.name, this.age, this.grade);
  void displayInfo() {
    print('Name: $name | Age: $age | Grade: $grade | Passed: ${isPassed()}');
  }
  bool isPassed() => grade >= 50.0;
}

Student findTopStudent(List<Student> students) {
  if (students.isEmpty) {
    print("no Student ");
  }
  return students.reduce(
    (top, current) => current.grade > top.grade ? current : top,
  );
}

