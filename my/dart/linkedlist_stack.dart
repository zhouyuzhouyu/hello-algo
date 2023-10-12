import 'list_node.dart';

class LinkedListStack {
  ListNode? _stackPeek;
  int _stkSize = 0;

  LinkedListStack() {
    _stackPeek = null;
  }

  int size() {
    return _stkSize;
  }

  bool isEmpty() {
    return _stkSize == 0;
  }

  void push(int num) {
    final newNode = ListNode(num);
    newNode.next = _stackPeek;
    _stackPeek = newNode;
    _stkSize++;
  }

  int? pop() {
    if (isEmpty()) {
      return null;
    }
    final popNode = _stackPeek;
    _stackPeek = _stackPeek!.next;
    _stkSize--;
    return popNode!.val;
  }

  List<int> toList() {
    final List<int> list = [];
    var cur = _stackPeek;
    while (cur != null) {
      list.add(cur.val);
      cur = cur.next;
    }
    return list.reversed.toList();
  }
}
