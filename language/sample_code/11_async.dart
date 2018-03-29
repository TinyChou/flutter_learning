import 'dart:async';

Future<Null> printWithDelay(String message) async {
  await new Future.delayed(const Duration(seconds: 1)).then((_) {
    print(message);
  });
}

void main() {
  printWithDelay('message');
}