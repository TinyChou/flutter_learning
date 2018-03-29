void main() {
  var year = 2018;
  var array = [ 'a', 'b', 'c', 'd', 'e', 'f' ];
  if (year >= 2000) {
    print('21st centry');
  } else {
    print('20st centry');
  }

  for (var obj in array) {
    print(obj);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 3000) {
    year += 1;
  }
  print(year);
}