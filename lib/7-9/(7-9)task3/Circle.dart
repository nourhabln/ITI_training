import 'package:untitled6/7-9/(7-9)task3/shape.dart';

class Circle extends Shape{
  late double radius;
  Circle({double radius =0.0,String color="" ,bool Filled =true  }):super(color:color,filled:Filled);

double getRadius(){
  return radius;
}
void setRadius( double radius){
  this.radius=radius;
}

  @override
  double getarea() {
return (3.14*radius*radius);
  }

  @override
  double getperimeter() {
    return (2*3.14*radius);
  }

  @override
  void show() {
  print("circle ( radius is ${radius} color is${super.color} Filled ${super.filled} )");
  }



}