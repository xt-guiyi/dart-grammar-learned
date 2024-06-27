/*
 * @Author: xt 1661219752@qq.com
 * @Date: 2024-06-26 11:18:00
 * @LastEditors: xt 1661219752@qq.com
 * @LastEditTime: 2024-06-26 11:46:05
 * @Description: 模式匹配
 */

enum Color { red, green, blue }

void main() {
  // 模式是 Dart 语言中的语法类别，就像语句和表达式一样。模式表示一组值的形状，它可以与实际值相匹配。
  // 1.模式可以检查是否匹配数字、字符串、布尔值、列表、元组、映射、函数、类等。
  // 2.模式可以生成值,也就是解构赋值

  // 匹配
  var number = 1;
  switch (number) {
    // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }

  const a = 'a';
  const b = 'b';
  const obj = ['a', 'b'];
  switch (obj) {
    // List pattern [a, b] matches obj first if obj is a list with two fields,
    // then if its fields match the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }

  const first = 1;
  const last = 10;
  const value = 5; // 1 || 5 || {'a': 1, 'b': 2}
  switch (value) {
    // Matches if 1 == obj.
    case 1:
      print('one');

    // Matches if the value of obj is between the
    // constant values of 'first' and 'last'.
    case >= first && <= last:
      print('in range');

    // Matches if obj is a record with two fields,
    // then assigns the fields to 'a' and 'b'.
    case (var a, var b):
      print('a = $a, b = $b');

    default:
  }

  // 匹配枚举值
  var color = Color.red;
  var isPrimary = switch (color) {
    Color.red || Color.green || Color.blue => true,
    _ => false
  };
  print(isPrimary);

  // 解构
  var numList = [1, 2, 3];

  var [x1, x2, x3] = numList;
  print(x1 + x2 + x3);

  // 匹配并解构第一个元素为 1 或 22 的3元素列表
  switch (numList) {
    case [1 || 11, 2, var c]:
      print(c);
  }

  var (b1, [v, w]) = ('str', [1, 2]);
  print(b1);
  print(v);
  print(w);

  // 交换变量值
  var (left, right) = ('left', 'right');
  (right, left) = (left, right); // Swap.
  print('$left $right'); // Prints "right left".

  // 此示例在 for-in 循环中使用对象解构来解构 <Map>.entries 调用返回的 MapEntry 对象
  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
  for (var MapEntry(:key, :value) in hist.entries) {
    print('$key occurred $value times');
  }

  // 匹配和解构传入的 JSON
  var json = {
    'user': ['Lily', 13]
  };
  // 解构
  var {'user': [name, age]} = json;
  print(name);
  print(age);

  // 匹配
  if (json case {'user': [String name, int age]}) {
    print('User $name is $age years old.');
  }
}
