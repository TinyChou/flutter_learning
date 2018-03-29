class Mixins {
  int a = 1;
  
  void foo() {
    print('oh i have a \'a\': $a');
  }
}

class Parent {
  // empty
}

class Child extends Parent with Mixins {
  // also empty
}

void main() {
  var instance = new Child();
  instance.a = 1234;
  instance.foo();
}