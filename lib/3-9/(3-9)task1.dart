import 'dart:ffi';
import 'dart:io';
void main(){
  print("enter id");
  int id = int.parse(stdin.readLineSync()!);

  print("enter name");
  String name = stdin.readLineSync()!;
  print("enter age");
  int age = int.parse(stdin.readLineSync()!);
  print ('enter degree 5 subjects');
  int degree1 = int.parse(stdin.readLineSync()!);
  int degree2 = int.parse(stdin.readLineSync()!);
  int degree3 = int.parse(stdin.readLineSync()!);
  int degree4 = int.parse(stdin.readLineSync()!);
  int degree5 = int.parse(stdin.readLineSync()!);
  print ("id=$id ,name =$name ,age=$age,degree of subjects is=$degree1 ,$degree2,$degree3,$degree4,$degree5");
  int total_degree=degree1+degree2+degree3+degree4+degree5;
  double percent_degree=((total_degree)/(5*50))*100;
  print (percent_degree);
  if (percent_degree>=50&& percent_degree<=65)
    print("pass");
  else if(percent_degree>=66&& percent_degree<=75)
    print("good");
  else if(percent_degree>=76&& percent_degree<=85)
    print("very good");
  else if(percent_degree>=86&& percent_degree==100)
    print("ex");

}