import 'dart:math';

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 * Input: root = [3,9,20,null,null,15,7]
Output: 3
 */

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  @override
  String toString() {
    // TODO: implement toString
    return 'Node: $val, left: $left, right: $right';
  }
}

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) {
      return 0;
    }
    int heightL = maxDepth(root.left);
    int heightR = maxDepth(root.right);
    return max(heightL, heightR) + 1;
  }
}
