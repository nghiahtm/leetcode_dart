import 'package:dart_application_1/leetcode_71.dart';
import 'package:test/test.dart';

import 'dart_application_1_test.dart';

final dataTest = [
  TestData(message: "path 1", input: "/home/", output: "/home"),
  TestData(message: "path 2", input: "/../", output: "/"),
  TestData(message: "path 3", input: "/..", output: "/"),
  TestData(
      message: "path 4", input: "/.../a/../b/c/../d/./", output: "/.../b/d"),
];

void main() {
  group("test solution 126", () {
    final sol = Solution();
    for (var data in dataTest) {
      test(data.message, () {
        final result = sol.simplifyPath(data.input);
        expect(result, data.output);
      });
    }
  });
}
