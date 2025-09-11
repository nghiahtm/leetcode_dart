//Given the head of a sorted linked list,
//delete all nodes that have duplicate numbers,
//leaving only distinct numbers from the original list.
//Return the linked list sorted as well.

// Input: head = [1,1,1,2,3]
// Output: [2,3]

import 'leetcode_206.dart';

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    /// Tạo một list node trước head để dễ dàng thao tác
    /// tránh trường hợp head bị xóa
    ListNode createDummy = ListNode(0, head);
    ListNode? slow = createDummy;
    ListNode? curNode = head;
    while (curNode != null) {
      if (curNode.val == curNode.next?.val) {
        while (curNode != null && curNode.val == curNode.next?.val) {
          curNode = curNode.next;
        }
        slow?.next = curNode?.next;
      } else {
        slow = slow?.next;
      }
      curNode = curNode?.next;
    }
    return createDummy.next;
  }
}

void main(List<String> arguments) {
  final sol = Solution();
  final head = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))));
  final val = sol.deleteDuplicates(head);
  print(val);
}
