void main() {
  Developer dev = Developer('eng Mega', 10000000000000, 'Flutter');
 // اقبض الي انا عاوزه بقا 🤣🤣
 // 
  Designer designer = Designer('darch alrhanan', 200, 'Figma');

  dev.displayInfo();
  print('-------------------');
  designer.displayInfo();
}

class Employee {
  String name;
  int salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print('Employee Name: $name');
    print('Salary: $salary');
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, int salary, this.programmingLanguage):super(name, salary);

  @override
  void displayInfo() {
    print('Developer Name: $name');
    print('Salary: $salary');
    print('Programming : $programmingLanguage');
  }
}

class Designer extends Employee {
  String designTool;
// متعود استخدم السوبر  كده ديما 
  Designer(String name, int salary, this.designTool) : super(name, salary);


  @override
  void displayInfo() {
    print('Designer Name: $name');
    print('Salary: $salary');
    print('Design Tool: $designTool');
  }
}
