/*
 * @Author: xt 1661219752@qq.com
 * @Date: 2024-06-26 11:02:26
 * @LastEditors: xt 1661219752@qq.com
 * @LastEditTime: 2024-06-26 11:17:24
 * @Description: 集合
 */
void main() {
  // list
  var list = [1, 2, 3];
  var list1 = [4, 5, 6, ...list];

  assert(list.length == 3);
  assert(list[1] == 2);
  assert(list1.length == 6);
  list.add(4);
  list.removeAt(0);
  assert(list.length == 3);

  // sets
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var elements = <String>{};
  elements.add('1');
  elements.addAll(halogens);

  assert(elements.length == 5);

  // maps
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  gifts['fourth'] = 'calling birds';
  assert(gifts.length == 4);
  assert(gifts['second'] == 'turtledoves');

  var map1 = [1, 2, 3];
  var map2 = [0, ...map1]; // 扩展运算符
  assert(map1.length == 3);
  assert(map2.length == 4);
}
