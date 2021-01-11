

void main() {

  var list = [1,2,3];

  var list2 = const [1,2,3];

  var list3 = new List();

  Map map = {
    "a": 1,
    "b": 2,
    "c": 3
  };
  print(map.putIfAbsent("d", () => null));
  map.forEach((key, value) {
    print('key=${key}');
    print('value=${value}');
  });


}