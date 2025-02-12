import 'package:string_calculator_project/string_calculator_project.dart';

void main() {
  StringCalculator calculator = StringCalculator();

  print(calculator.add(""));
  print(calculator.add("1"));
  print(calculator.add("1,5"));
  print(calculator.add("1\n2,3"));
  print(calculator.add("//;\n1;2"));

  try {
    print(calculator.add("1,-2,3,-4"));
  } catch (e) {
    print(e);
  }
}
