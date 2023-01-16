final String newUser = 'Rashid';
int userMoney = 29;
int userMin = 5;
int range = 10;

// aklsdaskdjasd'jsa'djaslkdjaslkdjasdklsa
void main() {
  actionModel(userMoney, userMin);
}

void actionModel(int userActionValue, int userActionMin) {
  if (userActionValue > userActionMin) {
    double functionValueNew = secondFunction();
    print('$functionValueNew you are excused :)');
  } else {
    print('User $newUser sorry :(');
  }
}

double secondFunction() {
  return userMoney / range;
}
