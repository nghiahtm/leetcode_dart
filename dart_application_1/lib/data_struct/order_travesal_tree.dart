import 'dart:collection';

import 'tree_node.dart';

class Solution {
  List<List<int>> levelOrder(TreeNode? root) {
    if (root == null) return [];
    List<List<int>> result = [];
    //Khởi tạo: Cho nút root vào Queue
    final queue = Queue()..add(root);
    while (queue.isNotEmpty) {
      int size = queue.length;
      List<int> currentLevel = [];
      for (int i = 0; i < size; i++) {
        TreeNode node = queue.removeFirst();
        currentLevel.add(node.val);
      }
    }

    return result;
  }
}
