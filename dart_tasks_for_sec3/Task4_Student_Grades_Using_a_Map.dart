void main(){
  Map<String, int> studentGR = {
    "moamen": 50,
    "ahmed": 20,
    "ali": 70,
    "mohamed": 90,
    "sara": 40,
    "mona": 60,
  };
  int passC = 0;
  int sum = 0;
  for (int grade in studentGR.values) {
    sum += grade;
  }
  double avg = sum / studentGR.length;
  studentGR.forEach((name, grade) {
    print("Name: ${name} - Grade: ${grade}g");
    if(grade >= 50){
      print("Pass");
      passC++;
    }
    else{
      print("Fail");
    }
  });
  print("Average grade: $avg");
  int highestG = studentGR.values.first;
  String highestGS = studentGR.keys.first;
  studentGR.forEach((name, grade) {
    if (grade > highestG) {
      highestG = grade;
      highestGS = name;
    }
  });
  print("Highest grade student: $highestGS");
  print(" Student Passed count: $passC");
  print("Highest grade : $highestG");

}