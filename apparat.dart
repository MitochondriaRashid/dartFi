import 'dart:io';

void main() {
  // evenOdd();
  Banker();
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

int Calculator(valueNumber) {
  return valueNumber;
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

int bankSum = 1000;

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
