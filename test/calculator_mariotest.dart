import 'dart:math';

import 'package:calculator_mario/calculator_mario.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#add', () {
    test('zero', () {
      final calculator = Calculator();
      expect(calculator.add(0, 0), 0);
    });
    test('added by n', () {
      final calculator = Calculator();
      final randNumber = Random().nextDouble();
      expect(calculator.add(randNumber, 0), randNumber);
    });
    test('two number addition', () {
      final calculator = Calculator();
      final randNumber = Random().nextDouble();
      final randNumber2 = Random().nextDouble();
      expect(calculator.add(randNumber, randNumber2), randNumber + randNumber2);
    });
  });

  group('#substract', () {
    test('zero', () {
      final calculator = Calculator();
      expect(calculator.substract(0, 0), 0);
    });
    test('x by zero', () {
      final calculator = Calculator();
      final x = Random().nextDouble();
      expect(calculator.substract(x, 0), x);
    });
    test('minus x', () {
      final calculator = Calculator();
      final x = Random().nextDouble();
      expect(calculator.substract(0, x), -x);
    });
  });

  group('#multiplication', () {
    test('zero', () {
      final calculator = Calculator();
      final x = Random().nextDouble();
      expect(calculator.multiply(0, x), 0);
    });
    test('one', () {
      final calculator = Calculator();
      final x = Random().nextDouble();
      expect(calculator.multiply(1, x), x);
    });
    test('n by n', () {
      final calculator = Calculator();
      final x = Random().nextDouble();
      final y = Random().nextDouble();
      expect(calculator.multiply(y, x), x * y);
    });
  });
}
