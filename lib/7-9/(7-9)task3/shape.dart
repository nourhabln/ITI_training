abstract class Shape {
  late String color;
  late bool filled;

  Shape({ String color = "", bool filled = true}) {
    this.color = color;
    this.filled = filled;
  }

  String getcolor() {
    return this.color;
  }

  void setcolor(String color) {
    this.color = color;
  }

  bool isFilled() {
    return this.filled;
  }

  void setFilled(bool filled) {
    this.filled = filled;
  }

  double getarea();

  double getperimeter();

  void show();

}