import 'tree_node.dart';

TreeNode? invertTree(TreeNode? root) {
  // 1. Tìm điểm dừng
  if (root == null) return null;

  // 2. Xử lý "Bộ 3" (Tráo đổi)
  TreeNode? temp = root.right;
  root.right = root.left;
  root.left = temp;
  // ... dùng một biến tạm để tráo root.left và root.right ...

  // 3. Tiếp tục cho 2 node tiếp theo (Đệ quy)
  invertTree(root.left);
  invertTree(root.right);

  return root;
}
