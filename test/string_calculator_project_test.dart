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
}
