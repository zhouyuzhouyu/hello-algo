void main() {
  Map<int, String> map = {};

  map[1] = 'one';
  map[2] = 'two';
  map[3] = 'three';
  map[4] = 'four';

  String? name = map[100];

  map.remove(1);

  map.forEach((key, value) {
    print('$key: $value');
  });
  map.keys.forEach((key) {
    print(key);
  });
  map.values.forEach((element) {
    print(element);
  });

  map = map.map((key, value) {
    return MapEntry(key + 1, value);
  });
  print(map);
}
