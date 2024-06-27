/*
 * @Author: xt 1661219752@qq.com
 * @Date: 2024-06-26 10:30:18
 * @LastEditors: xt 1661219752@qq.com
 * @LastEditTime: 2024-06-26 10:43:13
 * @Description: 记录
 */
void main() {
  var record = ('first', a: 2, b: true, 'last');
  // 定义匿名字段的记录
  (String, int) ss;
  ss = ('A string', 123);

  // 定义命名字段的记录
  ({int a, bool b}) aa;
  aa = (a: 123, b: true);

  // 定义一个函数，接收一个记录作为参数，并返回一个新的记录，其中两个字段的值互换
  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // 记录允许函数返回捆绑在一起的多个值。要从返回中检索记录值，请使用模式匹配将值解构为局部变量。
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

  // 模式匹配进行解构
  var (name, age) = userInfo(json);

  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'
  print(ss);
  print(aa);
  print(swap((1, 2)));
  print(name);
  print(age);
}
