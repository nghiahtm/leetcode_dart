import 'tree_node.dart';

class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    return _build(nums, 0, nums.length - 1);
  }

  TreeNode? _build(List<int> nums, int left, int right) {
    // 1. Điểm dừng: Nếu vùng xét duyệt không hợp lệ
    if (left > right) return null;

    // 2. Tìm vị trí ở giữa
    int mid = (left + right) ~/ 2;

    // 3. Tạo nút gốc cho phân đoạn này
    TreeNode root = TreeNode(nums[mid]);

    // 4. Đệ quy xây dựng 2 nhánh con
    // Gợi ý: Nhánh trái dùng đoạn từ [left] đến [mid - 1]
    //       Nhánh phải dùng đoạn từ [mid + 1] đến [right]
    root.left = _build(nums, left, mid - 1);
    root.right = _build(nums, mid + 1, right);
    return root;
  }
}
