class Point2D {
  late double _x;
  late double _y;

  Point2D({ double x =0.0,  double y =0.0}) {
    _x = x;
    _y = y;
  }
double getx(){
    return _x;
}
void setx(double x)
{
  _x=x;
}
  double gety(){
    return _y;
  }
  void sety(double y)
  {
    _y=y;
  }
  List<double> getxy(){

    return [this._x,this._y];
  }
  void setxy({required double x, required double y})
  {
    _x=x;
    _y=y;
  }
  void showPoint2D() {
    print("($_x, $_y)");
  }

}