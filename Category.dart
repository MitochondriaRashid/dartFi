// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'class.dart';

class Category {
  late int category_id;
  late String category_name;
  Category(this.category_id, this.category_name);
}

class NewCategory {
  late int num1;
  late int num2;
  NewCategory(this.num1, this.num2);
}

class Bazzarrix extends Windows {
  late int bazNum;
  late String bazText;
  Bazzarrix(this.bazNum, this.bazText, String field, int number)
      : super(field, number);

  @override
  void wriTer() {
    print('Rashid');
  }
}

void main() {
  // MyClassA();

  while (true) {
    print(
        '0 - program stop \n1 - class \n2 - operationN \n3 - arithemtic mean \n4 - dynamicList \n5 - EvenOdd \n6 - search string \n7  - studentsList');
    print('Enter number:');
    int userInputNumber = int.parse(stdin.readLineSync()!);
    print(' ' + '\n');

    switch (userInputNumber) {
      case 0:
        {
          print('Program stopped...');
          return;
        }

      case 1:
        {
          MyclassB();
        }
        break;

      case 2:
        {
          var classList1 = Category(13, 'rashid');
          var classList2 = Category(123, 'ragim');
          var classList3 = Category(3, 'fidan');

          var classList = <Category>[];
          classList.add(classList1);
          classList.add(classList2);
          classList.add(classList3);

          Comparator<Category> sorting =
              (x, y) => x.category_id.compareTo(y.category_id);
          classList.sort(sorting);

          Iterable<Category> filter = classList.where((singleList) {
            return singleList.category_name.contains('r');
          });

          classList = filter.toList();

          int eded = 0;
          for (var index in classList) {
            print('$eded - ${index.category_id}');
            eded++;
            print('$eded - ${index.category_name}');
            eded = 0;
            print(' ' + '\n');
          }
        }
        break;

      case 3:
        {
          print('1  - manual calculation \n2 - automatic calculation');
          int userChoice = int.parse(stdin.readLineSync()!);

          if (userChoice == 1) {
            var myList = <double>[];
            print('Enter the values count:');
            int valuesNumberInput = int.parse(stdin.readLineSync()!);
            print('Enter the values:');

            for (var index = 0; index < valuesNumberInput; index++) {
              double valuesNumber = double.parse(stdin.readLineSync()!);
              myList.add(valuesNumber);
            }

            print('The answer is ${meaner(myList, myList.length)}');
          } else if (userChoice == 2) {
            var myListSecond = <double>[];
            print('Enter the values count:');
            double userCount = double.parse(stdin.readLineSync()!);
            double userMultiple;
            double userValue;
            double trivual = 0;

            for (var index = 0; index < userCount; index++) {
              print('Enter the multiple value:');
              userMultiple = double.parse(stdin.readLineSync()!);
              print('Enter the number of value:');
              userValue = double.parse(stdin.readLineSync()!);
              double computer = userMultiple * userValue;
              trivual = trivual + userMultiple;
              myListSecond.add(computer);
            }

            print(
                'Your mean answer is - ${meanerAutomatic(myListSecond, myListSecond.length, trivual)}');
          }
        }
        break;

      case 4:
        {
          int parse1 = int.parse(stdin.readLineSync()!);
          int parse2 = int.parse(stdin.readLineSync()!);
          var new1ClassList = <int>[];
          new1ClassList.add(parse1);
          new1ClassList.add(parse2);
          var new2ClassList = <int>[];

          for (var index = 0; index < new1ClassList.length; index++) {
            new2ClassList.add(new1ClassList[index] * 2);
          }
          print(' ' + '\n');
          for (var index in new2ClassList) {
            print(index);
          }
          print('*' * 10 + '\n');
        }
        break;
      case 5:
        {
          print('Enter 6 numbers');
          int parse1 = int.parse(stdin.readLineSync()!);
          int parse2 = int.parse(stdin.readLineSync()!);
          int parse3 = int.parse(stdin.readLineSync()!);
          int parse4 = int.parse(stdin.readLineSync()!);
          int parse5 = int.parse(stdin.readLineSync()!);
          int parse6 = int.parse(stdin.readLineSync()!);
          var new1ClassList = <int>[];
          new1ClassList.add(parse1);
          new1ClassList.add(parse2);
          new1ClassList.add(parse3);
          new1ClassList.add(parse4);
          new1ClassList.add(parse5);
          new1ClassList.add(parse6);
          var new3ClassList = <int>[];
          var new2ClassList = <int>[];

          for (var index = 0; index < new1ClassList.length; index++) {
            if (new1ClassList[index] % 2 == 0) {
              new2ClassList.add(new1ClassList[index]);
            } else if (new1ClassList[index] % 2 == 1) {
              new3ClassList.add(new1ClassList[index]);
            }
          }
          print('Your even list numbers:');
          print(new2ClassList);
          print('Your odd list numbers:');
          print(new3ClassList);
          print('*' * 10 + '\n');
        }
        break;

      case 6:
        {
          var dataBase = <String>[
            'Rashid',
            'Rahim',
            'Aylin',
            'Tony Stark',
            'Fidan',
            'Aynure',
            'Elnare',
            'Anar',
            'Rauf',
            'Rahila',
            'Nadir'
          ];

          int length = dataBase.length;

          for (var index = 0; index < length; index++) {
            dataBase.add(dataBase[index].toLowerCase());
          }

          print('Search a word:');
          String searchBox = stdin.readLineSync()!;
          if (dataBase.contains(searchBox) == true) {
            print('$searchBox - in list');
          } else {
            print('$searchBox - not found');
          }
        }
        break;

      case 7:
        {
          var stList = <Students>[];
          int number = 0;
          while (true) {
            print('Enter students name: ');
            String stInputName = stdin.readLineSync()!;
            if (stInputName.toLowerCase() == 'end') {
              for (var index in stList) {
                print('Student no: ${index.no + 1}');
                print('Student name: ${index.stName}');
                print('Student class: ${index.stClass}');
                print('*' * 10 + '\n');
              }
              break;
            }
            print('Enter student class');
            int stInputClass = int.parse(stdin.readLineSync()!);
            var students = Students(number++, stInputName, stInputClass);
            stList.add(students);
            Comparator<Students> sorting =
                (a, b) => a.stClass.compareTo(b.stClass);
            stList.sort(sorting);
            print('Stop request - end');
            print('  ' + '\n');
          }
        }
    }
  }
}

void MyClassA() {
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

void MyclassB() {
  Bazzarrix myClassB = Bazzarrix(10, 'rashid', 'as', 50);
  myClassB.wriTer();
}

double meaner(List<double> a, int b) {
  double trivual = 0;
  for (var index = 0; index < b; index++) {
    trivual = trivual + a[index];
  }

  return trivual / b;
}

double meanerAutomatic(List<double> a, int b, double t) {
  double trivual = 0;
  for (var index = 0; index < b; index++) {
    trivual = trivual + a[index];
  }

  return trivual / t;
}
