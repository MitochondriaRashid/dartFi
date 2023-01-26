import 'dart:async';

void main() {
  // Map<String, List<int>> BankUser = {
  //   'Ahmet': [100, 300, 300],
  //   'Mehmet': [30, 50],
  //   'Veli': [30]
  // };

  // for (var index in BankUser.keys) {
  //   int value = 0;

  //   for (var item in BankUser[index]!) {
  //     if (item > 150) {
  //       value = value + item;
  //     }
  //   }

  //   print('$index, hesapinizda cemi $value');
  // }

  // Map<String, List<int>> MyList = {
  //   'Rashid': [100, 200, 300],
  //   'Fidan': [20, 30, 49],
  //   'Aylin': [2, 3, 4],
  // };

  // for (var item in MyList.keys) {
  //   for (var index in MyList[item]!) {
  //     if (index > 100) {
  //       print('$item - $index');
  //     }
  //   }
  // }

  // List<int?> nulLable = [100, null, 30];

  // for (var item in nulLable) {
  //   // if (item != null) {
  //   //   print('$item - Not a null');
  //   // } else
  //   //   print('$item - This is a null');

  //   bool result = item != null ? true : false;
  //   print('$item - $result');
  // }

  int serbestDeyisen = 1;
  int factoCalculator = 1;
  for (var index = 1; index < 5; index++) {
    serbestDeyisen++;
    factoCalculator = factoCalculator * serbestDeyisen;
  }

  print(factoCalculator);
}

// int? counter(money) {
//   if (money != null) {
//     return money;
//   }
// }


