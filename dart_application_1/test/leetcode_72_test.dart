import 'package:dart_application_1/leetcode_72.dart';
import 'package:test/test.dart';

import 'dart_application_1_test.dart';

final dataTest = [
  TestData(message: "path 1", input: ["horse", "ros"], output: 3),
  TestData(message: "path 2", input: ["intention", "execution"], output: 5),
  TestData(message: "path 3", input: ["eeeee", "iiii"], output: 2),
];

void main() {
  group("test solution 72", () {
    final sol = Solution();
    for (var data in dataTest) {
      test(data.message, () {
        final result = sol.minDistance(data.input[0], data.input[1]);
        expect(result, data.output);
      });
    }
  });
}
