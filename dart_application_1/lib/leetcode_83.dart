// Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.
// Example 1:
// Input: head = [1,1,2]
// Output: [1,2]
// Example 2:
// Input: head = [1,1,2,3,3]
// Output: [1,2,3]
// Constraints:

// The number of nodes in the list is in the range [0, 300].
// -100 <= Node.val <= 100
// The list is guaranteed to be sorted in ascending order.

import 'leetcode_206.dart';

/**
 * Definition for singly-linked list.
class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    ListNode? curNode = head;
    while (curNode != null && curNode.next != null) {
      if (curNode.val == curNode.next!.val) {
        // bỏ qua node trùng
        curNode.next = curNode.next!.next;
      } else {
        curNode = curNode.next;
      }
    }
    return head;
  }
}

void main(List<String> arguments) {
  final sol = Solution();
  final head = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))));
  final val = sol.deleteDuplicates(head);
  print(val);
}
