// 206. Reverse Linked List
// Easy
// Topics
// Companies
// Given the head of a singly linked list, reverse the list, and return the reversed list.
//
//
//
// Example 1:
// Input: head = [1,2,3,4,5]
// Output: [5,4,3,2,1]
// Example 2:
//
//
// Input: head = [1,2]
// Output: [2,1]
// Example 3:
//
// Input: head = []
// Output: []
//
//
// Constraints:
//
// The number of nodes in the list is the range [0, 5000].
// -5000 <= Node.val <= 5000

class ListNode {
    int val;
     ListNode? next;
    ListNode([this.val = 0, this.next]);

    @override
    String toString(){
      return "Node val: $val, next: $next";
    }
  }

class Solution {
  ListNode? reverseList(ListNode? head) {
    if(head == null){
      return null;
    }
    List<int> vals = <int>[];
    vals.add(head.val);
    while(head!.next != null){
      head = head.next;
      vals.add(head!.val);
    }
    final listRev = vals.reversed.toList();
    ListNode res = ListNode(listRev[0]);
    ListNode cur = res;
    for(int i = 1; i<listRev.length;i++){
      while(cur.next != null) {
        cur = cur.next!;
      }
      cur.next = ListNode(listRev[i]);
    }

    return res;
  }
}