class A {
  num id;
  String name;

  A(this.id, this.name) {

  }
}

class B extends A {
  num c;

  B(num id, String name, this.c) : super(id, name);
}

void main() {
  var a = new A(0, 'aaa');
  var b = new B(1234, 'bbb', 1.2);

  print(a); // Instance of 'A'
  print(b); // Instance of 'B'
}