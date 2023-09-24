import 'dart:ffi';
import 'dart:io';
void main(){
  print("enter num 1");
  int num1 = int.parse(stdin.readLineSync()!);

  print("enter num 2");
  int num2 = int.parse(stdin.readLineSync()!);
  int i;
  if (num1>num2) {
    for (i = num1; i >= num2; i--) {
      print("$i");
    }
  }
    else
      {
        for(i=num1;i<=num2;i++){
          print("$i");
        }
      }
  }



