/**
 * unary postfix:  expr++  expr--  ()  []  .  ?.
 * unary prefix:  -expr  !expr  ~expr  ++expr  --expr
 * multiplcative:  *  /  %  ~/
 * additive:       +  -
 * shift:          <<  >>
 * bitwise AND:    &
 * bitwise XOR:    ^
 * bitwise OR:     |
 * relational and type test:  >=  >  <=  <  as  is  is!
 * equality:       ==  !=
 * logical AND:    &&
 * logical OR:     ||
 * if null:        ??
 * conditional:    expr1 ? expr2 : expr3
 * cascade:        ..
 * assignment:     =    *=    /=    ~/=    %=    +=    -=    <<=    >>=    &=    ^=    |=    ??=
 */
 a++
 a + b
 a = b
 a == b
 c ? a : b
 a is T

 // Parentheses improve readability.
if ((n % i == 0) && (d % i == 0)) ...

// Harder to read, but equivalent.
if (n % i == 0 && d % i == 0) ...

// 1.Arithmetic operators
/**
 *   +          Add
 *   -          Subtract
 *   -expr      Unary minus, also known as negation (reverse the sign of the expression)
 *   *          Multiply
 *   /          Divide
 *   ~/         Divide, returning an integer result
 *   %          Get the remainder of an integer division (modulo)
 */
 assert(2 + 3 == 5);
 assert(2 - 3 == -1);
 assert(2 * 3 == 6);
 assert(5 / 2 == 2.5); // Result is a double
 assert(5 ~/ 2 == 2); // Result is an int
 assert(5 % 2 == 1); // Remainder

 assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

 /**
  *   ++var     var = var + 1 (expression value is var + 1)
  *   var++     var = var + 1 (expression value is var)
  *   --var     var = var – 1 (expression value is var – 1)
  *   var--     var = var – 1 (expression value is var)
  */
var a, b;

a = 0;
b = ++a; // Increment a before b gets its value.
assert(a == b); // 1 == 1

a = 0;
b = a++; // Increment a AFTER b gets its value.
assert(a != b); // 1 != 0

a = 0;
b = --a; // Decrement a before b gets its value.
assert(a == b); // -1 == -1

a = 0;
b = a--; // Decrement a AFTER b gets its value.
assert(a != b); // -1 != 0

// 2.Equality and relational operators
/**
 *   ==        Equal
 *   !=        Not equal
 *   >         Greater than
 *   <         Less than
 *   >=        Greater than or equal to
 *   <=        Less than or equal to
 */
 assert(2 == 2);
 assert(2 != 3);
 assert(3 > 2);
 assert(2 < 3);
 assert(3 >= 3);
 assert(2 <= 3);

 // 3.Type test operators
 /**
  *   as      Typecast (also used to specify library prefixes)
  *   is      True if the object has the specified type
  *   is!     False if the object has the specified type
  */
if (emp is Person) {
  // Type check
  emp.firstName = 'Bob';
}
(emp as Person).firstName = 'Bob';

// 4.Assignment operators
// Assign value to a
a = value;
// Assign value to b if b is null; otherwise, b stays the same
b ??= value;
/**
 *   =  -=  /=  %=  >>=  ^=  +=  *=  ~/=  <<=  &=  |=
 */
var a = 2; // Assign using =
a *= 3; // Assign and multiply: a = a * 3
assert(a == 6);

// 5.Logical operators
/**
 *   !expr    inverts the following expression (changes false to true, and vice versa)
 *   ||       logical OR
 *   &&       logical AND
 */
if (!done && (col == 0 || col == 3)) {
 // ...Do something...
}
// 6.Bitwise and shift operators
/**
 *  &         AND
 *  |         OR
 *  ^         XOR
 *  ~expr     Unary bitwise complement (0s become 1s; 1s become 0s)
 *  <<        Shift left
 *  >>        Shift right
 */
final value = 0x22;
final bitmask = 0x0f;

assert((value & bitmask) == 0x02); // AND
assert((value & ~bitmask) == 0x20); // AND NOT
assert((value | bitmask) == 0x2f); // OR
assert((value ^ bitmask) == 0x2d); // XOR
assert((value << 4) == 0x220); // Shift left
assert((value >> 4) == 0x02); // Shift right

// 7.Conditional expressions
var visibility = isPublic ? 'public' : 'private';
String playerName(String name) => name ?? 'Guest';
// Slightly longer version uses ?: operator.
String playerName(String name) => name != null ? name : 'Guest';

// Very long version uses if-else statement.
String playerName(String name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}

// 8.Cascade notation (..)
querySelector('#confirm') // Get an object.
  ..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));

var button = querySelector('#confirm');
button.text = 'Confirm';
button.classes.add('important');
button.onClick.listen((e) => window.alert('Confirmed!'));

final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = (PhoneNumberBuilder()
            ..number = '415-555-0100'
            ..label = 'home')
          .build())
    .build();

var sb = StringBuffer();
sb.write('foo')
  ..write('bar'); // Error: method 'write' isn't defined for 'void'.

// 9.Other operators
/**
 *   Operator        Name                         Meaning
 *   ()       Function application        Represents a function call
 *   []       List access                 Refers to the value at the specified index in the list
 *   .        Member access               Refers to a property of an expression; example: foo.bar selects property bar from expression foo
 *   ?.       Conditional member access   Like ., but the leftmost operand can be null; example: foo?.bar selects property bar from expression foo unless foo is null (in which case the value of foo?.bar is null)
 */
