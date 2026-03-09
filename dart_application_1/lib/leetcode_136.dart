// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

// You must implement a solution with a linear runtime complexity and use only constant extra space.

// Example 1:

// Input: nums = [2,2,1]

// Output: 1

// Example 2:

// Input: nums = [4,1,2,1,2]

// Output: 4

// Example 3:

// Input: nums = [1]

// Output: 1

// Constraints:

// 1 <= nums.length <= 3 * 104
// -3 * 104 <= nums[i] <= 3 * 104
// Each element in the array appears twice except for one element which appears only once.

class Solution {
  int singleNumber(List<int> nums) {
    final countNums = <int, int>{};
    for (final num in nums) {
      countNums[num] = (countNums[num] ?? 0) + 1;
    }
    return countNums.keys.firstWhere((e) => countNums[e] == 1);
  }

  // sol2
  int singleNumber2(List<int> nums) {
    final countNums = Set();
    for (final num in nums) {
      if (countNums.contains(num)) {
        countNums.remove(num);
      } else {
        countNums.add(num);
      }
    }
    return countNums.first;
  }
}
