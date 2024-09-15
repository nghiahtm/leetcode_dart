class Solution {
  bool isSymmetric(TreeNode? root) {
    if (root?.val == null) return false;
    if (root?.left?.val == null && root?.right?.val == null) return false;
    if (root?.left?.val == root?.right?.val &&
        root?.left?.left?.val == root?.right?.right?.val &&
        root?.left?.right?.val == root?.right?.left?.val) return true;
    return isSymmetric(root?.left) && isSymmetric(root?.right);
  }

  void scanNode(TreeNode? root) {
    if (root?.val == null) return;
    scanNode(root?.left);
    scanNode(root?.right);
  }
}

class TreeNode {
  int? val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  @override
  String toString() {
    return "Node: val = $val, TL: $left, TR: $right";
  }
}
