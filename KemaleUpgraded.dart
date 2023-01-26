import 'dart:io';

List<double> numberList = [];
void main() {
  print('*******************');

  String a = '1 addition process\n' +
      '2 substraction process\n' +
      '3 multiplication process\n' +
      '4 division process';

  print('1 addition process\n' +
      '2 substraction process\n' +
      '3 multiplication process\n' +
      '4 division process\n' +
      '5 for showing the process\n' +
      '6 for quit the program');
  // print('Please choose process 1 :');
  //String? b = stdin.readLineSync();

  while (true) {
    print('*******************');
    numberList.clear();
    print('Please choose process:');
    int? inputOne = int.parse(stdin.readLineSync()!);
    if (inputOne == 6) {
      print('Program stop...');
      break;
    }
    if (inputOne == 5) {
      print('****************');
      print(a);
      continue;
    }
    print('Please choose number of quantity:');
    int? inputQuantity = int.parse(stdin.readLineSync()!);

    for (int item = 0; item < inputQuantity; item++) {
      print('please input number ${item + 1}');
      double? addition1 = double.parse(stdin.readLineSync()!);
      numberList.add(addition1);
    }

    if (inputOne == 1) {
      print(addition(numberList, inputQuantity));
    } else if (inputOne == 2) {
      print(substraction(numberList, inputQuantity));
    } else if (inputOne == 3) {
      print(multiplication(numberList, inputQuantity));
    } else if (inputOne == 4) {
      print(division(numberList, inputQuantity));
    }
  }
}

double addition(List<double> a, int i) {
  double z = a.elementAt(0);
  for (int j = 1; j < i; j++) {
    z = z + a.elementAt(j);
  }
  return z;
}

double substraction(List<double> a, int i) {
  double z = a.elementAt(0);
  for (int j = 1; j < i; j++) {
    z = z - a.elementAt(j);
  }
  return z;
}

double multiplication(List<double> a, int i) {
  double z = 1;
  for (int j = 0; j < i; j++) {
    z = z * a.elementAt(j);
  }
  return z;
}

double division(List<double> a, int i) {
  double z = a.elementAt(0);
  for (int j = 1; j < i; j++) {
    z = z / a.elementAt(j);
  }

  return z;
}
