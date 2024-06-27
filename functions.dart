void main() {
  // 定义一个函数
  bool isNoble(int atomicNumber) {
    return atomicNumber >= 5 && atomicNumber <= 11;
  }

  isNoble(1);

  //简写语法
  bool isNobleOther(int? atomicNumber) => atomicNumber != null;

  isNobleOther(2);

  // 定义一个带命名参数的函数
  /// Sets the [bold] and [hidden] flags ...
  bool enableFlags({bool? bold, bool? hidden}) {
    return bold != null && hidden != null;
  }

  enableFlags(bold: true, hidden: false);


  // 定义一个可选参数的函数
  void printMessage(String message, [String? prefix]) {
    if (prefix != null) {
      print('$prefix: $message');
    } else {
      print(message);
    }
  }

  printMessage('Hello, world!');
  printMessage('Goodbye, world!', 'Adieu');
}
