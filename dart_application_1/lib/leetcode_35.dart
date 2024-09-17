/*
Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.

 

Example 1:

Input: nums = [1,3,5,6], target = 5
Output: 2
Example 2:

Input: nums = [1,3,5,6], target = 2
Output: 1
Example 3:

Input: nums = [1,3,5,6], target = 7
Output: 4
*/

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
