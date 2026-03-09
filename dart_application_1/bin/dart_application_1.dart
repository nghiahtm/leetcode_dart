import 'package:dart_application_1/leetcode_104.dart';

void main(List<String> arguments) {
  final sol = Solution();
  TreeNode root = TreeNode(3);
  root.left = TreeNode(9);
  root.right = TreeNode(20);
  root.right?.left = TreeNode(15);
  root.right?.right = TreeNode(7);
  print(sol.maxDepth(root));
}
