// ignore_for_file: unused_element

class MaxHeap {
  late List<int> _heap;

  MaxHeap(this._heap) {}

  int _left(int i) {
    return 2 * i + 1;
  }

  int _right(int i) {
    return 2 * i + 2;
  }

  int _parent(int i) {
    return (i - 1) ~/ 2;
  }

  void _swap(int i, int j) {
    int tmp = _heap[i];
    _heap[i] = _heap[j];
    _heap[j] = tmp;
  }

  int size() {
    return _heap.length;
  }

  bool isEmpty() {
    return size() == 0;
  }

  int peek() {
    return _heap[0];
  }

  void push(int num) {
    _heap.add(num);
    siftUp(size() - 1);
  }

  void siftUp(int i) {
    while (i > 0 && _heap[i] > _heap[_parent(i)]) {
      _swap(i, _parent(i));
      i = _parent(i);
    }
  }
}
