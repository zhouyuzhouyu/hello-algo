class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

traverse(ListNode? head) {
  var cur = head;
  while (cur != null) {
    print(cur.val);
    cur = cur.next;
  }
}

insert(ListNode ln, ListNode lnToInsert) {
  lnToInsert.next = ln.next;
  ln.next = lnToInsert;
}

deleteAfter(ListNode ln) {
  if (ln.next == null) return;
  ln.next = ln.next!.next;
}

int find(ListNode? ln, int target) {
  var cur = ln;
  var index = -1;
  while (cur != null) {
    index++;
    if (cur.val == target) {
      break;
    }
    cur = cur.next;
  }
  return index;
}

void main() {
  ListNode n4 = ListNode(4);
  ListNode n3 = ListNode(3, n4);
  ListNode n2 = ListNode(2, n3);
  ListNode n1 = ListNode(1, n2);
  ListNode n0 = ListNode(0, n1);

  var list = [1, 2, 3, 4, 5];

  ListNode head = ListNode(list[0]);
  ListNode cur = head;
  for (var i = 0; i < list.length - 1; i++) {
    cur.next = ListNode(list[i + 1]);
    cur = cur.next!;
  }
  traverse(head);

  insert(head, ListNode(100));
  traverse(head);

  deleteAfter(head);
  traverse(head);
}
