import 'dart:io';
import 'dart:math';

int bankSum = 1000;

void main() {


  String textQuestion =
      ' 1 - NameFor \n 2 - dataWhile \n 3 -evenOdd \n 4 -Banker \n 5 -Program Stop';
  print('*' * 10);
  print(
      ' 1 - NameFor \n 2 - dataWhile \n 3 -evenOdd \n 4 -Banker \n 5 -Program Stop \n 6 -showing the process \n');

  while (true) {
    print('*' * 10);
    print('Which program running?');
    int runnerInput = int.parse(stdin.readLineSync()!);

    if (runnerInput == 1) {
      NameFor();
    } else if (runnerInput == 2) {
      dataWhile();
    } else if (runnerInput == 3) {
      evenOdd();
    } else if (runnerInput == 4) {
      Banker();
    } else if (runnerInput == 5) {
      print('Program stopped');
      break;
    } else if (runnerInput == 6) {
      print(textQuestion);
      continue;
    }
  }
}

void NameFor() {
  print('Enter your name:');
  String inputName = stdin.readLineSync()!;
  print('Enter count:');
  int inputInt = int.parse(stdin.readLineSync()!);
  print('Your name repeater:');

  for (var index = 1; index <= inputInt; index++) {
    print(inputName);
  }
}

void dataWhile() {
  print('Enter data name:');
  String inputName = stdin.readLineSync()!;
  int trider = inputName.length;

  while (trider > 1) {
    print(inputName);
    trider -= 1;
  }
}

void evenOdd() {
  while (true) {
    print('1 value calculator');
    print('2 for quit the program');
    int? inputFor = int.parse(stdin.readLineSync()!);

    if (inputFor == 1) {
      print('Please enter a value:');
      int? value = int.parse(stdin.readLineSync()!);

      int CalcuFuction = Calculator(value);

      if (CalcuFuction % 2 == 1) {
        print('$CalcuFuction is odd,');
        print('*' * 10);
      } else if (CalcuFuction % 2 == 0) {
        print('$CalcuFuction is even');
        print('*' * 10);
      }
    } else if (inputFor == 2) {
      print('Program stopped...');
      break;
    }
  }
}

void Banker() {
  print(' 1 Check your account \n 2 Deposit account \n 3 Withdraw account');
  print(' *' * 10);
  int Input = int.parse(stdin.readLineSync()!);

  switch (Input) {
    case 1:
      {
        print('Your account sum');
        print(accounFunction(bankSum));
      }
      break;

    case 2:
      {
        print('Enter your deposit sum');
        int depositInput = int.parse(stdin.readLineSync()!);
        print('Your deposit sum ${depositFunction(depositInput)}');
      }
      break;
    case 3:
      {
        print('Withdraw your sum');
        int withdrawtInput = int.parse(stdin.readLineSync()!);
        print('Your withdraw sum ${withdrawFunction(withdrawtInput)}');
      }
      break;
  }
}

int Calculator(valueNumber) {
  return valueNumber;
}

int accounFunction(int depositInput) {
  bankSum = depositInput;
  return bankSum;
}

int depositFunction(int depositInput) {
  return depositInput + bankSum;
}

int withdrawFunction(int depositInput) {
  return bankSum - depositInput;
}
