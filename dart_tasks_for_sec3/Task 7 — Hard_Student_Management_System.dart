void main() {
  List<Map<String, dynamic>> students = [
    {
      "Name": "moamen",
      "grade": [50, 60, 70, 80, 90],
    },
    {
      "Name": "ahmed",
      "grade": [20, 30, 40, 50, 60],
    },
    {
      "Name": "ali",
      "grade": [70, 80, 90, 100, 110],
    },
    {
      "Name": "mohamed",
      "grade": [90, 100, 110, 120, 130],
    },
    {
      "Name": "sara",
      "grade": [40, 50, 60, 70, 80],
    },
    {
      "Name": "mona",
      "grade": [60, 70, 80, 90, 100],
    },
  ];
  // part A
  for (var student in students) {
    List<int> grades = List<int>.from(student["grade"]);
    double avg = grades.reduce((a, b) => a + b) / grades.length;
    student["average"] = avg;
    if (avg >= 85) {
      student["status"] = "Excellent";
    } else if (avg >= 70) {
      student["status"] = "Good";
    } else if (avg >= 50) {
      student["status"] = "Pass";
    } else {
      student["status"] = "Fail";
    }
  }
}