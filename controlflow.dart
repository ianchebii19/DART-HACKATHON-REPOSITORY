import 'dart:io';
void main() {
  int marks = askForMarks();
  String grade = determineGrade(marks);
  print("The grade is: $grade");
}

int askForMarks() {
  print("Enter student's marks (0-100): ");
  int marks = int.parse(readLineSync()!); // Read user input and convert to int
  return marks;
}

String determineGrade(int marks) {
  if (marks > 85) {
    return "Excellent";
  } else if (marks >= 75) {
    return "Very Good";
  } else if (marks >= 65) {
    return "Good";
  } else {
    return "Average";
  }
}

String? readLineSync() {
 
  return stdin.readLineSync();
}
