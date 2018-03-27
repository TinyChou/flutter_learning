// define a function.
printNumber(num aNumber) {
  print('The number is $aNumber');
}

// this is where the app starts executing.
main() {
  var number = 42; // declare and initialize a variable
  printNumber(number);// call a function
}

/* NOTES:
  1.//: This is a comment
  2.num: built-in types String, int, bool
  3.42: number literal, a kind of compile-time constant
  4.print(): a handy way to display output
  5.${expression|variable}: string interpolation
  6.main(): app entrance
  7.var: declare a variable without specifying its type
 */