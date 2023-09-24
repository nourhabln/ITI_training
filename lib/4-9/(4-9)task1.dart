import 'dart:ffi';
import 'dart:io';

void main() {
  bool repeat = true;
  do {
    print("enter your operation 1-fact , 2-sum , 3-power");
    int operation = int.parse(stdin.readLineSync()!);
    int i;
    switch (operation) {
      case 1:
        {
          print("enter num");
          int num = int.parse(stdin.readLineSync()!);
          int fact = 1;
          for (i = num; i >= 1; i--) {
            fact *= i;
          }
          print(fact);
        }
        break;
      case 2:
        {
          print("enter num");
          int num = int.parse(stdin.readLineSync()!);
          int sum = 0;
          for (i = num; i >= 1; i--) {
            sum += i;
          }
          print(sum);
          break;
        }
      case 3:
        {
          print("enter num");
          int num = int.parse(stdin.readLineSync()!);
          print("Enter a power");
          int power = int.parse(stdin.readLineSync()!);

          int result = 1;
          for (i = 1; i <= power; i++) {
            result *= num;
          }
          print("Result: $result");
          break;
        }
      default:
        {
          print("Invalid operation");
        }
    }

    print('Do you want to perform another operation? (y/n)');
    String op = stdin.readLineSync()!;
    if (op == 'n') {
      repeat = false;
      print('No operation');
    }
  }while (repeat);
}

