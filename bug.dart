```dart
class MyClass {
  final List<int> _data = [];

  void addData(int value) {
    _data.add(value);
  }

  int getData(int index) {
    if (index < 0 || index >= _data.length) {
      throw RangeError.value(index, 'index', 'Index out of bounds');
    }
    return _data[index];
  }
}

void main() {
  final myClass = MyClass();
  myClass.addData(10);
  myClass.addData(20);
  myClass.addData(30);

  try {
    final value = myClass.getData(10);
    print('Value at index 10: $value');
  } catch (e) {
    print('Error: $e');
  }
}
```