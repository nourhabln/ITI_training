/*
import 'dart:io';

void main (){

  List<Map<String, dynamic>> L=[];
  List <int> degree = [];
  int total=0;
  double per=0.0;
  int numMat=0;



  print("enter num of students in list");
  int numofstudent = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= numofstudent; i++){
    print("enter id of student for student $i");
    int id = int.parse(stdin.readLineSync()!);

    print("enter name of student for student $i");
    String name = stdin.readLineSync()!;

    print("how much materials is studied this student $i");
     numMat = int.parse(stdin.readLineSync()!);



    for(int j = 1;j <= numMat;j++){
      print("what is degree for matrial$j");
       int degrees = int.parse(stdin.readLineSync()!);
      degree.add(degrees);
    }
    L.add({"id": id,"name":name,"degree":degree});
  }
  print(L);
 for(var element in L){
   print("Student id is ${element["id"]}");
   print("Student name is ${element["name"]}");
    for (int degrees in element["degree"]) {

      total += degrees;
    }
    per =(total/(numMat)*50)*100;


    print(" ${element["id"]}    ${element["name"]}   ${element["degree"] }    ${total}   $per %    }");
   if (per>=50&& per<=65)
     print("pass");
   else if(per>=66&& per<=75)
     print("good");
   else if(per>=76&& per<=85)
     print("very good");
   else if(per>=86&& per==100)
     print("excellent");
   else
     print("failed");


 }
}

*/
import 'dart:io';

void main() {
  List<Map<String, dynamic>> L = [];

  print("Enter the number of students in the list:");
  int numofstudent = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numofstudent; i++) {
    print("Enter the ID of student $i:");
    int id = int.parse(stdin.readLineSync()!);
    print("Enter the name of student $i:");
    String name = stdin.readLineSync()!;
    print("How many materials has student $i studied?");
    int numMat = int.parse(stdin.readLineSync()!);
    List<int> degrees = [];
    for (int j = 1; j <= numMat; j++) {
      print("Enter the degree for material $j:");
      int degree = int.parse(stdin.readLineSync()!);
      degrees.add(degree);
    }

    L.add({"id": id, "name": name, "degrees": degrees});
  }

  print(L);

  for (var element in L) {
    print("Student ID: ${element["id"]}   Student Name: ${element["name"]}");
    int total = 0;
    for (int degree in element["degrees"]) {
      total += degree;
    }

    double percentage = (total / (element["degrees"].length * 50)) * 100;
    print("Total Degree: $total");
    print("Percentage: ${percentage.toStringAsFixed(2)}%");

    if (percentage >= 50 && percentage <= 65) {
      print("Result: Pass");
    } else if (percentage > 65 && percentage <= 75) {
      print("Result: Good");
    } else if (percentage > 75 && percentage <= 85) {
      print("Result: Very Good");
    } else if (percentage > 85 && percentage <= 100) {
      print("Result: Excellent");
    } else {
      print("Result: Failed");
    }

    print("--------");
  }
}