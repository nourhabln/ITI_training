import 'package:untitled6/7-9/(7-9)task2/point2d.dart';

class Point3D extends Point2D {
  late double _z;

  Point3D({double z=0,double x=0,double y=0}):super(x:x,y:y)
  {
    this._z=z;
  }
  double getz(){
    return _z;
  }
  void setz(double z)
  {
    _z=z;
  }

  List getxyz(){

    return super.getxy() + [this._z];
  }
  void setxyz({required double x,required double y,required double  z})
  {
    super.setxy(x: x,y: y);
  
  }
  void showPoint3D() {

    print("(${ super.getx()}, ${super.getx() }, ${this._z}");
  }

}