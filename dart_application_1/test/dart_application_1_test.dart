import 'package:dart_application_1/leetcode_122.dart';
import 'package:test/test.dart';

class TestData {
  String? caseTest;
  String? message;
  dynamic input;
  dynamic output;
  TestData({this.caseTest, this.message, this.input, this.output});
}

final dataTest = [
  TestData(message: "max profit 1", input: [7, 1, 5, 3, 6, 4], output: 7),
  TestData(message: "max profit 2", input: [1, 2, 3, 4, 5], output: 4),
  TestData(message: "max profit 3", input: [7, 6, 4, 3, 1], output: 0)
];
void main() {
  group("test solution 126", () {
    final sol = Solution();
    for (var data in dataTest) {
      test(data.message, () {
        final result = sol.maxProfit(data.input);
        expect(result, data.output);
      });
    }
  });
}
