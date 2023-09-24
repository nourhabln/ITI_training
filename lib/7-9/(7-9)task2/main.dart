import 'package:untitled6/7-9/(7-9)task2/Point3D.dart';
import 'package:untitled6/7-9/(7-9)task2/point2d.dart';

void main(){

  Point2D object1=Point2D(x: 1,y: 2);
  object1.showPoint2D();

  Point2D object2=Point2D();
  object2.setxy(x: 3, y: 4);
  print("(${object2.getxy()[0]},${object2.getxy()[1]})\n");

  Point3D object3=Point3D(x: 5,y: 4,z: 3);
  object3.showPoint3D();

  Point3D object4=Point3D();
  object4.setxyz(x: 4, y: 8, z: 7);
  print("(${object4.getxyz()[0]},${object4.getxyz()[1]},${object4.getxyz()[2]})\n");



}