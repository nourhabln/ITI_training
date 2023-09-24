import 'package:flutter/material.dart';

class Meal{
  late String name,Description,Recipe,video;
  String images;
  late int price;

  Meal({required this.name,required this.Description,required this.price,required this.images,this.video="",required this.Recipe});

}