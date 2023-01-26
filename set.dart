import 'dart:io';
import 'classUse.dart';
import 'classes.dart';
import 'enum.dart';

void main() {
  // secondMain();
  // thirdMain();
  // classUse();
}

void secondMain() {
  utilities(Properties.height);

  print('Enter eded');
  int inputEded = int.parse((stdin.readLineSync()!));
  print('Enter derece');
  int inputDerece = int.parse((stdin.readLineSync()!));

  int returner = calculate(inputEded, inputDerece);

  print('Answer is $returner');
}

void utilities(Properties item) {
  if (item == Properties.width) {
    print('Width: 130px');
  } else if (item == Properties.height) {
    print('Height 200px');
  } else if (item == Properties.mass) {
    print('Mass: 0.2gr');
  }
}

void thirdMain() {
  List<double> array = [];
  print('1 addition process\n' +
      '2 substraction process\n' +
      '3 multiplication process\n' +
      '4 division process\n' +
      '5 for showing the process\n' +
      '6 for quit the program');
  int inputOption = int.parse(stdin.readLineSync()!);

  switch (inputOption) {
    case 1:
      {
        print('Number count');
        double inputCount = double.parse(stdin.readLineSync()!);
        print('Numbers');

        for (var index = 0; index < inputCount; index++) {
          double inputNumbers = double.parse(stdin.readLineSync()!);
          array.add(inputNumbers);
        }
        print(additionCalculator(array, (array.length)));
        break;
      }

    case 2:
      {
        print('Number count');
        double inputCount = double.parse(stdin.readLineSync()!);
        print('Numbers');

        for (var index = 0; index < inputCount; index++) {
          double inputNumbers = double.parse(stdin.readLineSync()!);
          array.add(inputNumbers);
        }
        print(substractionCalculator(array, (array.length)));
      }
      break;

    case 3:
      {
        print('Number count');
        double inputCount = double.parse(stdin.readLineSync()!);
        print('Numbers');

        for (var index = 0; index < inputCount; index++) {
          double inputNumbers = double.parse(stdin.readLineSync()!);
          array.add(inputNumbers);
        }
        print(multiplicationCalculator(array, (array.length)));
      }
      break;

    case 4:
      {
        print('Number count');
        double inputCount = double.parse(stdin.readLineSync()!);
        print('Numbers');

        for (var index = 0; index < inputCount; index++) {
          double inputNumbers = double.parse(stdin.readLineSync()!);
          array.add(inputNumbers);
        }
        print(divisionCalculator(array, (array.length)));
      }
      break;
  }
}

void classUse() {
  var mainClass = MainClass();
  var compositionUser = CompositionUser();

  var b = compositionUser.compositionUser(10, 5);
  mainClass.mainClassFunction(22, 'necesen?', b);

  print(mainClass.mainClassFunction);
}

int calculate(int inputEded, int inputDerece) {
  int voluer = inputEded;
  for (var index = 1; index < inputDerece; index++) {
    inputEded *= voluer;
  }

  return inputEded;
}

double additionCalculator(List<double> funcList, int funcLength) {
  double trivual = 0;

  for (var index = 0; index < funcLength; index++) {
    trivual = trivual + funcList[index];
  }

  return trivual;
}

double substractionCalculator(List<double> funcList, int funcLength) {
  double trivual = funcList[0];

  for (var index = 1; index < funcLength; index++) {
    trivual = trivual - funcList[index];
  }

  return trivual;
}

double multiplicationCalculator(List<double> funcList, int funcLength) {
  double trivual = funcList[0];

  for (var index = 1; index < funcLength; index++) {
    trivual = trivual * funcList[index];
  }

  return trivual;
}

double divisionCalculator(List<double> funcList, int funcLength) {
  double trivual = funcList[0];

  for (var index = 1; index < funcLength; index++) {
    trivual = trivual / funcList[index];
  }

  return trivual;
}
