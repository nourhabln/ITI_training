import 'dart:math';

import 'package:untitled6/7-9/(7-9)task3/Circle.dart';
import 'package:untitled6/7-9/(7-9)task3/rectangle.dart';

void main(){
  Circle c1=Circle();
  Rectangle r1=Rectangle();
  c1.setRadius(20);
  print("erea of circle is ${c1.getarea()} and perimeter is ${c1.getperimeter()}\n ");
  c1.show();
  r1.setlength(10);
  r1.setWidth(5);
  print("\n erea of rectangle is ${r1.getarea()} and perimeter is ${r1.getperimeter()}\n");
  r1.show();
}