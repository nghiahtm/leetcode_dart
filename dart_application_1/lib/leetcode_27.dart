
class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((value)=>value == val);
    return nums.length;
  }
}