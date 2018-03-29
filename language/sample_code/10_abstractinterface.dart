abstract class Parent {
  void foo();

  void zoo() {
    print('zoo');
  }
}

class I {
  void p() {
    print('I\'m i');
  }
}

class Child implements I {
  void p() {
    print('override p()');
  }
}

class Child2 extends Parent {
  void foo() {
    // NOTE: this should be implemented!
  }
}

void main() {
  var child = new Child();
  child.p();

  var child2 = new Child2();
  child2.foo();
  child2.zoo();
}