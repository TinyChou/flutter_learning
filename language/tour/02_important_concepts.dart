/**
 *
 * keep these facts and concepts in mind:
 *
 * 1.Everything you can place in a variable is an object, and every object is an instance of a class.
 *   Even numbers, functions, and null are objects. All objects inherit from the Object class.
 *   完全面向对象，一切皆对象。
 *
 * 2.Although Dart is strongly typed, type annotations are optional because Dart can infer types.
 *   In the code above, number is inferred to be of type int. When you want to explicitly say that no type is expected, use the special type dynamic.
 *   是强类型语言，但有一个可选dynamic。
 *
 * 3.Dart supports generic types, like List<int> (a list of integers) or List<dynamic> (a list of objects of any type).
 *   支持范型。
 *
 * 4.Dart supports top-level functions (such as main()), as well as functions tied to a class or object (static and instance methods, respectively).
 *   You can also create functions within functions (nested or local functions).
 *   支持顶级function类似main(),同时支持函数式编程和面向对象。还支持function嵌套(function中的function)。
 *
 * 5.Similarly, Dart supports top-level variables, as well as variables tied to a class or object
 *   (static and instance variables). Instance variables are sometimes known as fields or properties.
 *   支持顶级变量，静态变量，实例变量(属性/特征)。
 *
 * 6.Unlike Java, Dart doesn’t have the keywords public, protected, and private.
 *   If an identifier starts with an underscore (_), it’s private to its library. For details, see Libraries and visibility.
 *   没有访问控制前缀，通过_区分library内还是外。
 *   Identifiers can start with a letter or underscore (_), followed by any combination of those characters plus digits.
 *
 * 7.Dart has both expressions (which have runtime values) and statements (which don’t). For example, the conditional expression condition ? expr1 : expr2 has a value of expr1 or expr2.
 *   Compare that to an if-else statement, which has no value. A statement often contains one or more expressions, but an expression can’t directly contain a statement.
 *   区分expression和statement，这里类似其他语言。
 *
 * 8.Dart tools can report two kinds of problems: warnings and errors. Warnings are just indications that your code might not work,
 *   but they don’t prevent your program from executing. Errors can be either compile-time or run-time.
 *   A compile-time error prevents the code from executing at all; a run-time error results in an exception being raised while the code executes.
 *   有warnings,errors.compile-time errors会导致程序crash，run-time errors会抛出异常。
 */
