/*Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

 

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.
Example 2:

Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.
Example 3:

Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.
*/

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> triples = [];
    if (nums.length < 3) {
      return triples;
    }
    int fIn = 0;
    int sIn = 1;
    while (sIn < nums.length / 2) {
      for (int i = sIn + 1; i < nums.length - 3; i++) {
        List<int> triplet = [];
        int total = nums[fIn] + nums[sIn] + nums[i];
        if (total == 0) {
          triplet.add(nums[fIn]);
          triplet.add(nums[sIn]);
          triplet.add(nums[i]);
          triples
            ..add(triplet)
            ..sort();
        }
      }
      fIn++;
      sIn++;
    }
    return triples;
  }
}
