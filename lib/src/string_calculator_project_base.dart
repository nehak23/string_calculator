import 'package:string_calculator_project/text_cpnstants.dart';

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    if (numbers.startsWith('//')) {
      var parts = numbers.split('\n');
      delimiter = parts.first.substring(2);
      numbers = parts.sublist(1).join('\n');
    }

    numbers = numbers.replaceAll('\n', delimiter);
    List<int> numList = numbers.split(delimiter).map(int.parse).toList();

    List<int> negatives = numList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception(
          "${TextConstants.negativeNumbersNotAllowed} ${negatives.join(', ')}");
    }

    return numList.reduce((a, b) => a + b);
  }
}
