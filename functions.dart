import 'dart:io';
void main() {
  double num1 = askForNumber("Enter first number: ");
  double num2 = askForNumber("Enter second number: ");
  
  double sum = addNumbers(num1, num2);
  double difference = subtractNumbers(num1, num2);
  
  print("The sum of the numbers is: $sum");
  print("The difference of the numbers is: $difference");
}

double askForNumber(String message) {
  print(message);
  double number = double.parse(readLineSync()!); 
  return number;
}

double addNumbers(double num1, double num2) {
  return num1 + num2;
}

double subtractNumbers(double num1, double num2) {
  return num1 - num2;
}

String? readLineSync() {
 
  return stdin.readLineSync();
}
