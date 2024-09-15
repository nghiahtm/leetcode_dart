class Solution {
  int searchInsert(List<int> nums, int target) {
    if (nums.isEmpty) return 1;
    if (nums.length == 1) {
      if (target <= nums[0]) return 0;
      return 1;
    }
    int left = 0;
    int right = nums.length - 1;
    int mid = ((left + right) ~/ 2);
    if (target == nums[mid]) return mid;
    if (target > nums[mid]) {
      return checkInd(mid + 1, right, nums, target);
    }
    if (target < nums[mid]) {
      return checkInd(left, mid, nums, target);
    }
    return 0;
  }

  int checkInd(int iLDirect, int iRDirect, List<int> nums, int target) {
    while (iLDirect <= iRDirect) {
      if (target > nums[iRDirect]) {
        return iRDirect + 1;
      }
      if (target == nums[iRDirect]) {
        return iRDirect;
      }
      iRDirect--;
      if (iRDirect < iLDirect) {
        return iLDirect;
      }
    }
    return 0;
  }
}
