import 'dart:ffi';

class Bus {
  late String color;
  late int velocity;
  late String checkUp;

  void properTies(String color, int velocity, String checkUp) {
    this.color = color;
    this.velocity = velocity;
    this.checkUp = checkUp;
  }

  void properTiesAdded(int velocity) {
    this.velocity += velocity;
  }

  void checker() {
    print('Bus status $checkUp');
    print('Bus speed $velocity km/hours');
    print('Bus color $color');
  }
}

class Arithmetica {
  late int number1;
  static int number3 = 10;
  late int number2;
  late double Tf;
  late String keywords;

  int calculator(int number1, int number2) {
    this.number1 = number1;
    this.number2 = number2;

    return number1 + number2;
  }

  double FahreCelcius(double number1) {
    this.Tf = number1 * 1.8 + 32;
    return Tf;
  }

  void compiler() {
    print('Your Fahrenheit temprature $Tf' + 'F :');
  }

  int factorial(int number1) {
    int factoCalculator = 1;
    for (var index = 1; index < number1 + 1; index++) {
      factoCalculator *= index;
    }

    return factoCalculator;
  }
}

class CompositionUser {
  late int eded1;
  late int eded2;

  compositionUser(int eded1, int eded2) {
    this.eded1 = eded1;
    this.eded2 = eded2;

    eded1 + 100 + eded2;
  }
}
