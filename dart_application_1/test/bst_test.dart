import 'package:dart_application_1/data_struct/bst.dart';
import 'package:dart_application_1/extension/convert_tree_list.dart';
import 'package:test/test.dart';

import 'dart_application_1_test.dart';

final dataTest = [
  TestData(
      message: "path 1",
      input: [-10, -3, 0, 5, 9],
      output: [0, -3, 9, -10, null, 5]),
  TestData(message: "path 2", input: [1, 3], output: [3, 1]),
];

void main() {
  group("test solution bst", () {
    final sol = Solution();
    for (var data in dataTest) {
      test(data.message, () {
        final result = sol.sortedArrayToBST(data.input).treeToLevelOrder;
        print(result);
        expect(result, data.output);
      });
    }
  });
}
