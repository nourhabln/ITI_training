import 'dart:io';
void main () {
  int? sum = 0;
  Map  m = {};

  print("enter num of value in map");
  int numofvalue = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= numofvalue; i++) {
    print("enter key in map num$i");
    int keys = int.parse(stdin.readLineSync()!);
    print("enter value in map num$i");
    m[keys]=stdin.readLineSync()!;

  }
  print(m);

}