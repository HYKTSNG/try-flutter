import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/calc.dart';

void main() {
  test('mytest1', () {
    var ans = 10;
    expect(ans, 10);
  });

  test('mytest2', () {
    const param1 = 10;
    const param2 = 10;

    var calc = Cacl();
    var ans = calc.add(param1, param2);

    expect(ans, 20);
  });
}
