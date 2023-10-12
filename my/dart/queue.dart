import 'dart:collection';

void main() {
  Queue<int> queue = Queue();

  queue.add(1);
  queue.add(2);
  queue.add(3);

  int peek = queue.first;
  int pop = queue.removeFirst();

  int size = queue.length;

  bool isEmpty = queue.isEmpty;

  print(queue);
}
