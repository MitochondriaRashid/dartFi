// ignore_for_file: public_member_api_docs, sort_constructors_first

class Windows {
  late String field;
  late int number;

  Windows(this.field, this.number);

  String windowsCalculator(field, number) {
    return field + number.toString();
  }

  void wriTer() {
    print('object');
  }
}

class Copernicus {
  late int num1;
  late int num2;
  late int numSum;
  Copernicus(
    this.num1,
    this.num2,
  ) {
    numSum = num1 + num2;
  }

  int coperniCus() {
    return numSum;
  }
}

class Atreides extends Copernicus {
  late int num3;
  late int num4;
  late int numSum2;

  Atreides(int num1, int num2, this.num3, this.num4) : super(num1, num2) {
    numSum2 = num3 + num4;
  }
  @override
  // TODO: implement numSum
  int get numSum => numSum2;
}

class Animals {
  late String properties;

  String animals(properties) {
    return properties;
  }
}

class Alligator extends Animals {
  String crocodyles(Animals p) {
    return p.animals('Rashid_Xiyardi');
  }
}

class Elephant extends Animals {}

class Tiger extends Animals {}

abstract class Foodable {
  int salt = 100;
  String taste = 'Delicious';
}

abstract class Drinkable {
  double gas = 28.7;
  String sugar = 'Candy';
}

class CocaCola implements Foodable, Drinkable {
  @override
  double gas = 10.5;

  @override
  int salt = 50;

  @override
  String sugar = 'Souce';

  @override
  String taste = 'Piece of shit';

  int a = 20;
}

class Badamli extends CocaCola {
  @override
  String taste = 'Bitter';
}

class Students {
  late int no;
  late String stName;
  late int stClass;

  Students(this.no, this.stName, this.stClass);
}

void main() {
  var cocaCola = CocaCola();
  var badamli = Badamli();
  Foodable pepsiCola = CocaCola();

  print('\n' + '*' * 10 + '\n');
  print(cocaCola.sugar);
  print(badamli.taste);
  print(badamli.salt);
  print(pepsiCola.taste);
  print(badamli.a);
}
