// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'class.dart';

class Category {
  late int category_id;
  late String category_name;

  category(int category_id, String category_name) {
    this.category_id = category_id;
    this.category_name = category_name;
  }
}

class Bazzarrix extends Windows {
  late int bazNum;
  late String bazText;
  Bazzarrix(this.bazNum, this.bazText, String field, int number)
      : super(field, number);
}

void main() {
  print('Please enter data count:');
  int userInputCount = int.parse(stdin.readLineSync()!);

  for (var index = 0; index < userInputCount; index++) {
    print('Please enter data data number :');
    int userInputInt = int.parse(stdin.readLineSync()!);
    print('Please enter data data name :');
    String userInputString = stdin.readLineSync()!;

    Bazzarrix myClassA = Bazzarrix(10, 'rashid', userInputString, userInputInt);
    print(
        'Result: ' + myClassA.windowsCalculator(userInputString, userInputInt));
  }
}
