void insert(List<int> list, int value, int index) {
  // list.insert(index, value);

  for (var i = list.length - 1; i > index; i--) {
    list[i] = list[i - 1];
  }
  list[index] = value;
  index = 3;
}

void delete(List<int> list, int index) {
  list.removeAt(index);
  // for (var i = index; i < list.length - 1; i++) {
  //   list[i] = list[i + 1];
  // }
}

void traverse(List nums) {
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  for (var num in nums) {
    print(num);
  }

  nums.forEach((element) => print(element));
}

int find<T>(List<T> list, T value) {
  // return list.indexOf(value);
  for (var i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return i;
    }
  }
  return -1;
}

/* 扩展数组长度 */
List extend(List nums, int enlarge) {
  // 初始化一个扩展长度后的数组
  List<int> res = List.filled(nums.length + enlarge, 0);
  // 将原数组中的所有元素复制到新数组
  for (var i = 0; i < nums.length; i++) {
    res[i] = nums[i];
  }
  // 返回扩展后的新数组
  return res;
}

void main() {
  print('Hello, World!');
  var list = [1, 2, 3, 4, 5];
  insert(list, 100, 1);
  print(list);

  delete(list, 2);
  print(list);

  traverse(list);

  print(find(list, 3));
  list.sort((a, b) => a - b);
  var listStr = ['a', 'b', 'c'];
  listStr.sort();
}
