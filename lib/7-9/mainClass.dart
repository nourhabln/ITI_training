import 'dart:io';

import 'Car.dart';
void main (){
 List cars=[];
 int? totalPrice=0;

 print("how many num of car");
  int numCars=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=numCars;i++)
  {
    print("\n enter code car $i");
    int code=int.parse(stdin.readLineSync()!);
    print("enter price car $i");
    int price=int.parse(stdin.readLineSync()!);
    print("enter color car $i");
    String color=stdin.readLineSync()!;
    print("enter model car $i");
    String Model=stdin.readLineSync()!;

    cars.add(Car(code,Model,price,color,));
     totalPrice = (totalPrice!+ price)!;


  }
  for (var v in cars )
  {
    print( " code is ${v.code}  , model is ${v.Model}  , color is ${v.color} ,  price is ${v.price}");
  }

 print (" total price ${totalPrice}");


}