import 'package:untitled6/7-9/(7-9)task3/shape.dart';
import 'package:untitled6/7-9/(7-9)task3/shape.dart';

class Rectangle extends Shape{
  late double width;
  late double length;

  Rectangle({double width =0.0,double length=0.0,String color="" ,bool Filled =true }):super(color:color,filled:Filled);

  double getWidth(){
    return width;
  }
  void setWidth( double width){
    this.width=width;
  }
  double getlength(){
    return length;
  }
  void setlength( double length){
    this.length=length;
  }


  @override
  double getarea() {
    return (width*length);
  }

  @override
  double getperimeter() {
    return ((width+length)*2);
  }

  @override
  void show() {
    print("rectangle ( width is ${width} , length is ${length} color is${super.color} Filled ${super.filled} )");
  }



}