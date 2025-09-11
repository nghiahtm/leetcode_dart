/*Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

 

Example 1:

Input: strs = ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
*/

class Solution {
  //C1: sử dụng sub string
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return "";
    }
    String longestString = strs[0];

    for (int i = 1; i < strs.length; i++) {
      while (strs[i].indexOf(longestString) != 0) {
        longestString = longestString.substring(0, longestString.length - 1);
      }
    }
    return longestString;
  }
}
