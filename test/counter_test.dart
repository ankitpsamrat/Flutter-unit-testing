import 'package:flutter_test/flutter_test.dart';
import 'package:just_test/counter.dart';

void main() {
  // this method is used for only one test case.
  // test(
  //     'When counter class instantiated then the value of count should be 0', // this is just a msg
  //     () {
  //   final Counter counter = Counter();

  //   final val = counter.count;

  //   expect(val, 0);
  // });

  // this method is used for multiple test cases.
  group('Counter Test', () {
    test(
        'When counter class instantiated then the value of count should be 0', // this is just a msg
        () {
      final Counter counter = Counter();

      final val = counter.count;

      expect(val, 0);
    });

    test('When counter is incremented then the value of count should be 1', () {
      final Counter counter = Counter();

      counter.incrementCounter();
      final val = counter.count;

      expect(val, 1);
    });

    test('When counter is decremented then the value of count should be -1',
        () {
      final Counter counter = Counter();

      counter.decrementCounter();
      final val = counter.count;

      expect(val, -1);
    });

    test('When counter is reset then the value of count should be 0', () {
      final Counter counter = Counter();

      counter.resetCounter();
      final val = counter.count;

      expect(val, 0);
    });
  });
}
