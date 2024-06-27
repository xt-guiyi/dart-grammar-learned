/*
 * @Author: xt 1661219752@qq.com
 * @Date: 2024-06-26 09:41:56
 * @LastEditors: xt 1661219752@qq.com
 * @LastEditTime: 2024-06-26 11:16:36
 * @Description: 基础语法
 */

void main() {
  // 变量声明
  // 推断类型
  var name = 'Bob'; // 变量声明
  const age = 25; // 常量声明,对象及其字段不能被更改：它们是不可变的
  final height = 1.75; // 常量声明，不能修改.但它的字段可能可以被更改
  // 不依靠推断
  String message = '字符串';
  int number = 10;
  double pi = 3.1415926;
  bool isTrue = true;
  const anything = ('first', a: 1, b: 2); // 记录类型
  const list = [1, 2, 3]; // list
  const numbers = {1, 2, 3, 4, 5}; // set
  const scores = {'Math': 90, 'English': 85, 'Science': 95}; // map

  String? sex; // 不依靠推断，可以为空
  sex = 'Male'; // 给sex赋值

  late int count; // 延迟初始化变量,确定他一定会有值，只是推迟初始化
  count = 10; // 给count赋值
  print('变量声明');
  print('Hello, $name! You are $age years old.'); // 字符串模板
  print(message);
  print(height);
  print(number);
  print(pi);
  print(isTrue);
  print('${anything.$1}-${anything.b}-${anything.a}');
  print(list);
  print(numbers);
  print(scores);
  print(sex);
  print(count);

  // 运算符
  var visibility = 10 > 5 ? 'public' : 'private'; // 条件运算符
  var result = null ?? 22; // 空值合并运算符
  print('运算符');
  print(visibility);
  print(result);
}
