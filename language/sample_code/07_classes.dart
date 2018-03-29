class Spacecraft {
  String name;
  DateTime launchDate;

  Spacecraft(this.name, this.launchDate) { // sytactic sugar for assignment to members
    // more code...
  }

  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
    launchDate?.year; // read-only non-final property

  void describe() {
    print('Spacescraft: $name');

    if (launchDate != null) {
      int years = new DateTime.now()
        .difference(launchDate)
        .inDays ~/ 365;
      print('Launched: $launchYear($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = new Spacecraft('name', new DateTime(1988, 1, 24));
  voyager.describe();

  var voyager2 = new Spacecraft.unlaunched('tinychou');
  voyager2.describe();
}