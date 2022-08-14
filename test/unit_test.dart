import 'package:flutter_test/flutter_test.dart';
import 'package:simple_calculator/calculator.dart';

void main() {
  group('Testing the calculator', () {
    test('Testing the addition', () {
      Calculator calculator = Calculator();

      calculator.add(10, 5);

      expect(calculator.result, 15.0);
    });

    test('Testing the subtraction', () {
      Calculator calculator = Calculator();

      calculator.subtract(10, 5);

      expect(calculator.result, 5.0);
    });

    test('Testing the multiplication', () {
      Calculator calculator = Calculator();

      calculator.multiply(10, 5);

      expect(calculator.result, 50.0);
    });

    test('Testing the division', () {
      Calculator calculator = Calculator();

      calculator.divide(10, 5);

      expect(calculator.result, 2.0);
    });
  });
}
