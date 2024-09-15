class Solution {
  bool isSameTree(TreeNode? p, TreeNode? q) {
   if(p?.val != q?.val) return false;
    if(p?.val == null && q?.val == null) return true;
    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right);
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