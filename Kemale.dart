import 'dart:io';

void main() {
  print('*******************');

  print('1 addition process\n' +
      '2 substraction process\n' +
      '3 multiplication process\n' +
      '4 division process');

  print('*******************');

  print('Please choose process:');

  int? inputOne = int.parse(stdin.readLineSync()!);

  print('please input number 1');
  double? addition1 = double.parse(stdin.readLineSync()!);

  print('please input number 2');

  double? addition2 = double.parse(stdin.readLineSync()!);

  if (inputOne == 1) {
    print(addition(addition1, addition2));
  } else if (inputOne == 2) {
    print(substraction(addition1, addition2));
  } else if (inputOne == 3) {
    print(multiplication(addition1, addition2));
  } else if (inputOne == 4) {
    print(division(addition1, addition2));
  }
}

double addition(addition1, addition2) {
  return addition1 + addition2;
}

double substraction(addition1, addition2) {
  return addition1 - addition2;
}

double multiplication(addition1, addition2) {
  return addition1 * addition2;
}

double division(addition1, addition2) {
  return addition1 / addition2;
}
