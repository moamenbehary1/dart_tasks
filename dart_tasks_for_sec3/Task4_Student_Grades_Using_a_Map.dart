void main(){
  Map<String, int> studentGradeRecord = {
    "moamen": 90,
    "ahmed": 80,
    "ali": 70,
    "mohamed": 60,
  };
  double average = studentGradeRecord.values.reduce((a, b) => a + b) / studentGradeRecord.length;
  print("Average grade: $average");
  studentGradeRecord.forEach((name, grade) {
    print("Name: $name - Grade: $grade g");
    if(grade >= 50){
      print("Pass");
    }
    else{
      print("Fail");
    }
  });
}