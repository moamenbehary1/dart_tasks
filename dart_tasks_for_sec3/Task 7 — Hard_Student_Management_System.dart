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
  int stdpassed = 0;
  for (var student in students) {
    List<int> grades = student["grade"];
    double sum = 0;
    for (int i = 0; i < grades.length; i++) {
      sum += grades[i];
    }
    double avg = sum / grades.length;
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
    if (avg >= 50) {
      stdpassed++;
    }
  }
  print("Number of students passed: $stdpassed");
  // part B
  for (var student in students) {
    print(
      "Name: ${student["Name"]} - Average: ${student["average"]} - Status: ${student["status"]}",
    );
  }
  int highestAvgIndex = 0;
  for (int i = 1; i < students.length; i++) {
    if (students[i]["average"] > students[highestAvgIndex]["average"]) {
      highestAvgIndex = i;
    }
  }
  int lowestAvgIndex = 0;
  for (int i = 1; i < students.length; i++) {
    if (students[i]["average"] < students[lowestAvgIndex]["average"]) {
      lowestAvgIndex = i;
    }
  }
  List<String> excellentStudents = [];
  for (var student in students) {
    List<int> grades = student["grade"];
    bool allAbove80 = true;
    for (int i = 0; i < grades.length; i++) {
      if (grades[i] < 80) {
        allAbove80 = false;
        break;
      }
    }
    if (allAbove80 == true) {
      excellentStudents.add(student["Name"]);
    }
  }
  // part C
  String searchName = 'mona';
  bool isFound = false;
  for (var student in students) {
    if (student["Name"].toString().toLowerCase() == searchName.toLowerCase()) {
      print("--- Student Found ---");
      print("Grades: ${student["grade"]}");
      print("Average: ${student["average"]}");
      isFound = true;
      break;
    }
  }
  if (isFound == false) {
    print("\nStudent not found");
  }

  // part D
  String choice = '4';

  print("--- Menu ---");
  print("1. All Students");
  print("2. Class Average");
  print("3. Top Student");
  print("4. Search");
  print("5. Exit");

  switch (choice) {
    case '1':
      print("--- All Students ---");
      for (var student in students) {
        print(
          "Name: ${student["Name"]} | Average: ${student["average"]} | Status: ${student["status"]}",
        );
      }
    case '2':
      print("--- Class Average ---");
      double totalAvg = 0;
      for (var student in students) {
        totalAvg += student["average"];
      }
      double classAvg = totalAvg / students.length;
      print("Class Average: $classAvg");
    case '3':
      print("--- Top Student ---");
      var topStudent = students[highestAvgIndex];
      print("Name: ${topStudent["Name"]} | Average: ${topStudent["average"]}");
    case '4':
      print("--- Search ---");
      if (isFound == true) {
        print("Student found.");
      } else {
        print("Student not found.");
      }
    case '5':
      print("Exiting program...");
    default:
      print("Invalid choice!");
  }



  //بس التاسك دا حلو جدا لو حد مش فاهم اللست و الماب و التعامل معاهم مشم هيعرف يحل حاجه 
  // و انا بصراحه مبسوط من التسك دا 
  
}
