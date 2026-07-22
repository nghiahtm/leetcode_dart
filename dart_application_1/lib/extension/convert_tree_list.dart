import 'dart:collection';

import 'package:dart_application_1/data_struct/tree_node.dart';

extension ConvertList on TreeNode? {
  List<int?> get treeToLevelOrder {
    if (this == null) return [];
    List<int?> result = [];
    Queue<TreeNode?> queue = Queue();
    queue.add(this);

    while (queue.isNotEmpty) {
      TreeNode? node = queue.removeFirst();
      if (node != null) {
        result.add(node.val);
        queue.add(node.left);
        queue.add(node.right);
      } else {
        result.add(null);
      }
    }
    // Xóa các giá trị null ở cuối mảng để giống format LeetCode
    while (result.isNotEmpty && result.last == null) {
      result.removeLast();
    }
    return result;
  }
}
