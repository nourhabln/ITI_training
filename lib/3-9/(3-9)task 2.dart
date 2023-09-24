
import 'dart:io';

void main() {
  print("Enter your status (m/s):");
  String status = stdin.readLineSync()!;

  switch (status) {
    case 'm': {
      print('Enter the number of children:');
      int children = int.parse(stdin.readLineSync()!);
      int s;

      if (children >= 0 && children <= 3) {
        s = 1200 + children * 150;
        print(s);
      } else if (children >= 4 && children <= 6) {
        s = 1800 + children * 250;
        print(s);
      } else if (children >= 7) {
        s = 2000 + children * 300;
        print(s);
      }
    }
    break;

    case 's': {
      print('Enter the number of years:');
      int years = int.parse(stdin.readLineSync()!);
      int s;

      if (years >= 0 && years <= 5) {
        s = 1000 + years * 200;
        print(s);
      } else if (years >= 6 && years <= 10) {
        s = 1500 + years * 400;
        print(s);
      } else if (years >= 11) {
        s = 2000 + years * 600;
        print(s);
      }
    }
    break;

    default:
      print('Unknown status');
  }
}