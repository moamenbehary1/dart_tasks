void main() {
  Employee emp1 = FullTimeEmployee('moamen', 101, 5000.0);
  Employee emp2 = PartTimeEmployee('ahmed', 102, 25.0, 160);
  List<Employee> employees = [emp1, emp2];
  for (var emp in employees) {
    print('name : ${emp.name} | id : ${emp.employeeId} | salary: ${emp.calculateSalary()}');
  }
}


class Employee {
  String name = '';
  int employeeId = 0;
  double calculateSalary() {
    return 0.0;
  }
}
class FullTimeEmployee extends Employee {
  double monthlySalary = 0.0;
  FullTimeEmployee(String name, int id, double salary) {
    this.name = name;
    this.employeeId = id;
    this.monthlySalary = salary;
  }
  double calculateSalary() {
    return monthlySalary;
  }
}
class PartTimeEmployee extends Employee {
  double hourlyRate = 0;
  int hoursWorked = 0;
  PartTimeEmployee(String name, int id, double rate, int hours) {
    this.name = name;
    this.employeeId = id;
    this.hourlyRate = rate;
    this.hoursWorked = hours;
  }
  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

