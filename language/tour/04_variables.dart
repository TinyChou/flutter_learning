var name = 'Bob';

// dynamic name = 'Bob';

// String name = 'Bob';


// Default value -> null
int lineCount;
assert(lineCount == null);

// Final and const
final name = 'Bob';
final String nickname = 'Bobby';
name = 'Alice'; // Error: a final variable can only be set once.

const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere

var foo = const [];
final bar = const [];
const baz = []; // Equivalent to `const []`

foo = [1, 2, 3]; // Was const []

baz = [42]; // Error: Constant variables can't be assigned a value.


// Built-in types
/**
 * numbers
 * strings
 * booleans
 * lists (also known as arrays)
 * maps
 * runes (for expressing Unicode characters in a string)
 * symbols
 */
// 1.Numbers: int, double
int x = 1;
int hex = 0xDEADBEEF;
double y = 1.1;
double exponents = 1.42e5;

// String -> int
var one = int.parse('1');
assert(one == 1);

// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');

// traditional bitwise shift (<<, >>), AND (&), and OR (|) operators
assert((3 << 1) == 6); // 0011 << 1 == 0110
assert((3 >> 1) == 1); // 0011 >> 1 == 0001
assert((3 | 4) == 7); // 0011 | 0100 == 0111

const msPerSecond = 1000;
const secondsUntilRetry = 5;
const msUntilRetry = secondsUntilRetry * msPerSecond;

// 2.Strings
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, ' +
        'which is very handy.');
assert('That deserves all caps. ' +
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. ' +
        'STRING INTERPOLATION is very handy!');
// Note: The == operator tests whether two objects are equivalent. Two strings are equivalent if they contain the same sequence of code units.

var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
assert(s1 ==
    'String concatenation works even over '
    'line breaks.');

var s2 = 'The + operator ' + 'works, as well.';
assert(s2 == 'The + operator works, as well.');

var s1 = '''
You can create
multi-line strings like this one.
''';

var s2 = """This is also a
multi-line string.""";

var s = r'In a raw string, not even \n gets special treatment.';

// These work in a const string.
const aConstNum = 0;
const aConstBool = true;
const aConstString = 'a constant string';

// These do NOT work in a const string.
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];

const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';

// 3.Booleans
// Check for an empty string.
var fullName = '';
assert(fullName.isEmpty);

// Check for zero.
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null.
var unicorn;
assert(unicorn == null);

// Check for NaN.
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);

// 4.Lists
var list = [1, 2, 3];
// Note: The analyzer infers that list has type List<int>.
// If you try to add non-integer objects to this list,
// the analyzer or runtime raises an error. For more information,
// read about type inference.

var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);

list[1] = 1;
assert(list[1] == 1);

var constantList = const [1, 2, 3];
// constantList[1] = 1; // Uncommenting this causes an error.

// 5.Maps
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

var gifts = Map();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = Map();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';

var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds'; // Add a key-value pair

var gifts = {'first': 'partridge'};
assert(gifts['first'] == 'partridge');

var gifts = {'first': 'partridge'};
assert(gifts['fifth'] == null);

var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds';
assert(gifts.length == 2);

final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

// constantMap[2] = 'Helium'; // Uncommenting this causes an error.

// 6.Runes
main() {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}

// 7.Symbols
