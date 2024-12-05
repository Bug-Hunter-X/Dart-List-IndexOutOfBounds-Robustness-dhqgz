```dart
class MyClass {
  final List<int> _data = [];

  void addData(int value) {
    _data.add(value);
  }

  int? getData(int index) {
    if (index < 0 || index >= _data.length) {
      //return null; //Option 1: Return null if index is out of bounds
      print('Warning: Index out of bounds'); //Option 2: Print a warning and return a default value
      return 0; //Option 2: Return a default value
    }
    return _data[index];
  }
}

void main() {
  final myClass = MyClass();
  myClass.addData(10);
  myClass.addData(20);
  myClass.addData(30);

  final value1 = myClass.getData(1); //Valid access
  final value2 = myClass.getData(10); //Invalid access

  print('Value at index 1: $value1');
  print('Value at index 10: $value2');
}
```