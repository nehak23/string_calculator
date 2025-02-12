import 'package:string_calculator_project/string_calculator_project.dart';
import 'package:test/test.dart';

void main() {
  final calculator = StringCalculator();

  test('Empty string returns 0', () {
    expect(calculator.add(""), equals(0));
  });

  test('Single number returns itself', () {
    expect(calculator.add("1"), equals(1));
  });

  test('Two numbers separated by comma', () {
    expect(calculator.add("1,5"), equals(6));
  });
  test('Handle new lines between numbers', () {
    expect(calculator.add("1\n2,3"), equals(6));
  });

  test('Support different delimiters', () {
    expect(calculator.add("//;\n1;2"), equals(3));
  });

  test('Throw exception for single negative number', () {
    expect(
        () => calculator.add("-1"),
        throwsA(predicate((e) =>
            e.toString() == "Exception: negative numbers not allowed -1")));
  });

  test('Throw exception for multiple negative numbers', () {
    expect(
        () => calculator.add("1,-2,3,-4"),
        throwsA(predicate((e) =>
            e.toString() == "Exception: negative numbers not allowed -2, -4")));
  });

  test('Throw exception when all numbers are negative', () {
    expect(
        () => calculator.add("-1,-2,-3"),
        throwsA(predicate((e) =>
            e.toString() ==
            "Exception: negative numbers not allowed -1, -2, -3")));
  });
}
