import 'list_node.dart';

class LinkedListQueue {
  ListNode? _front;
  ListNode? _rear;
  int _queueSize = 0;

  LinkedListQueue() {
    _front = null;
    _rear = null;
  }

  int size() {
    return _queueSize;
  }

  bool isEmpty() {
    return _queueSize == 0;
  }

  void push(int num) {
    final newNode = ListNode(num);
    if (isEmpty()) {
      _front = newNode;
      _rear = newNode;
    } else {
      _rear!.next = newNode;
      _rear = newNode;
    }
    _queueSize++;
  }

  int pop() {
    if (isEmpty()) {
      throw Exception('Queue is empty');
    }

    final popNode = _front;
    _front = _front!.next;
    _queueSize--;

    return popNode!.val;
  }

  int peek() {
    if (isEmpty()) {
      throw Exception('Queue is empty');
    }
    return _front!.val;
  }

  List<int> toList() {
    final List<int> list = [];
    var cur = _front;
    while (cur != null) {
      list.add(cur.val);
      cur = cur.next;
    }
    return list;
  }
}
