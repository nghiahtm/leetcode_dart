/*
Given the root of a binary tree, construct a 0-indexed m x n string matrix res that represents a formatted layout of the tree. The formatted layout matrix should be constructed using the following rules:

The height of the tree is height and the number of rows m should be equal to height + 1.
The number of columns n should be equal to 2height+1 - 1.
Place the root node in the middle of the top row (more formally, at location res[0][(n-1)/2]).
For each node that has been placed in the matrix at position res[r][c], place its left child at res[r+1][c-2height-r-1] and its right child at res[r+1][c+2height-r-1].
Continue this process until all the nodes in the tree have been placed.
Any empty cells should contain the empty string "".
Return the constructed matrix res.
 */
import 'dart:math';

import 'leetcode_100.dart';

class Solution {
  List<List<String>> printTree(TreeNode? root) {
    // Xđ độ cao cây: h
    int h = heightTree(root) + 1;
    // Xđ độ rộng cây:n= (2^(h + 1)) - 1
    int n = pow(2, h + 1).toInt() - 1;

    // Khởi tạo ma trận toàn chuỗi rỗng
    List<List<String>> res = List.generate(
      h,
      (_) => List.filled(n, ""),
    );
    void fillData(TreeNode? node, int r, int c) {
      if (node == null) return;
      res[r][c] = node.val.toString();
      // For each node that has been placed in the matrix at position res[r][c],
      //place its left child at res[r+1][c-2height-r-1] and its right child at res[r+1][c+2height-r-1].

      int offset = pow(2, h - r - 1).toInt();
      if (node.left != null) {
        fillData(node.left, r + 1, c - offset);
      }
      if (node.right != null) {
        fillData(node.right, r + 1, c + offset);
      }
    }

    fillData(root, 0, (n - 1) ~/ 2);
    return res;
  }

  int heightTree(TreeNode? root) {
    if (root == null) {
      return 0;
    }
    int heightL = heightTree(root.left);
    int heightR = heightTree(root.right);
    return max(heightR, heightL) + 1;
  }
}
