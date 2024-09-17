/*
You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 

Example 1:

Input: n = 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
Example 2:

Input: n = 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step
 

 */

class Solution {
  int climbStairs(int n) {
    int n1 = 2;
    int n2 = 1;
    if (n == 1) {
      return n2;
    }
    if (n == 2) {
      return n1;
    }
    int step = 3;
    int ways = 0;
    while (step <= n) {
      ways = n1 + n2;
      n2 = n1;
      n1 = ways;
      step++;
    }

    return ways;
  }
}
