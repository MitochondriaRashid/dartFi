import 'dart:io';

import 'classes.dart';

void main() {
  var myArithmeticClass = Arithmetica();

  var hesaplama = myArithmeticClass.calculator(100, 200);
  print('Your compute value - $hesaplama');
  print('*' * 10 + "\n");

  print(
      '1 - Celcius to Fahrenheit with function \n2 - Celcius to Fahrenheit with class  \n3 - Show options \n4- Letter counter \n5 - calculate a income \n6 - calculate a factorial \n0- Stop the program');

  String questons =
      '1 - Celcius to Fahrenheit with function \n2 - Celcius to Fahrenheit with class  \n3 - Show options \n4- Letter counter \n5 - calculate a income \n6 - calculate a factorial \n0- Stop the program';

  while (true) {
    print('Choose the order:');
    int orders = int.parse((stdin.readLineSync()!));

    switch (orders) {
      case 1:
        {
          print('Enter the temprature (Delcius): ');
          double Input = double.parse(stdin.readLineSync()!);

          var hesaplayan = fahrenheit(Input);

          print('Your Fahrenheit temprature $hesaplayan' + 'F :');
        }
        break;

      case 2:
        {
          print('Enter the temprature (Celcius): ');
          double Input = double.parse(stdin.readLineSync()!);

          myArithmeticClass.FahreCelcius(Input);
          myArithmeticClass.compiler();
        }
        break;

      case 3:
        {
          print(questons);
        }
        continue;

      case 4:
        {
          print('Enter a sentence');
          String? inputSentence = stdin.readLineSync()!;
          print('Enter a countable word:');
          String? inputWord = stdin.readLineSync()!;

          var phrases = RegExp(inputWord);
          print(phrases.allMatches(inputSentence).length);
        }
        break;

      case 5:
        {
          print('Enter a work day count');
          double workCount = double.parse(stdin.readLineSync()!);
          print('Enter a hour count');
          double workcost = double.parse(stdin.readLineSync()!);
          print('Enter a earn per hour cost');
          double workPerHourCost = double.parse(stdin.readLineSync()!);

          if (workcost > 8)
            print('The amount of daily clock that can be studied is 8');

          double income = workDayCounter(workCount, workcost, workPerHourCost);

          print('Your work income amount: $income' + 'AZN');
        }
        break;

      case 6:
        {
          print('Enter number for factorial: ');
          int factoInput, factoCalculator;
          factoInput = int.parse(stdin.readLineSync()!);
          factoCalculator = myArithmeticClass.factorial(factoInput);
          print('Your factorial answer $factoCalculator');
        }
        break;

      case 0:
        {
          print('Program has stopped');
        }
        return;
    }

    // if (orders == 1) {
    //   print('Enter the temprature (Delcius): ');
    //   double Input = double.parse(stdin.readLineSync()!);

    //   var hesaplayan = fahrenheit(Input);

    //   print('Your Fahrenheit temprature $hesaplayan' + 'F :');
    // } else if (orders == 2) {
    //   print('Enter the temprature (Celcius): ');
    //   double Input = double.parse(stdin.readLineSync()!);

    //   myArithmeticClass.FahreCelcius(Input);
    //   myArithmeticClass.compiler();
    // } else if (orders == 3) {
    //   print(questons);
    //   continue;
    // } else if (orders == 4) {
    //   print('Enter a sentence');
    //   String? inputSentence = stdin.readLineSync()!;
    //   print('Enter a countable word:');
    //   String? inputWord = stdin.readLineSync()!;

    //   var phrases = RegExp(inputWord);
    //   print(phrases.allMatches(inputSentence).length);
    // } else if (orders == 5) {
    //   print('Enter a work day count');
    //   double workCount = double.parse(stdin.readLineSync()!);
    //   print('Enter a hour count');
    //   double workcost = double.parse(stdin.readLineSync()!);
    //   print('Enter a earn per hour cost');
    //   double workPerHourCost = double.parse(stdin.readLineSync()!);

    //   if (workcost > 8)
    //     print('The amount of daily clock that can be studied is 8');

    //   double income = workDayCounter(workCount, workcost, workPerHourCost);

    //   print('Your work income amount: $income' + 'AZN');
    // } else if (orders == 6) {
    //   print('Enter number for factorial: ');
    //   int factoInput, factoCalculator;
    //   factoInput = int.parse(stdin.readLineSync()!);
    //   factoCalculator = myArithmeticClass.factorial(factoInput);
    //   print('Your factorial answer $factoCalculator');
    // } else if (orders == 0) {
    //   print('Program has stopped');
    //   break;
    // }
  }
}

class MainClass {
  late int reqem;
  late String pox;
  late CompositionUser compositionUser;
  // late CompositionUser compositionUser;

  mainClassFunction(int reqem, String pox, compositionUser) {
    this.reqem = reqem;
    this.pox = pox;
    this.compositionUser = compositionUser;
  }
}

double fahrenheit(double celcius) {
  double Tf = celcius * 1.8 + 32;
  return Tf;
}

double workDayCounter(
    double workCount, double workcost, double workPerHourCost) {
  return workCount * workcost * workPerHourCost;
}
