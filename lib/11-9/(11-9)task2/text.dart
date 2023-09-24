
import 'package:flutter/material.dart';

Widget text(
    {
      required String name, double FontSize =30
      ,Color color=Colors.black
    }
    )=>  Text(
  '$name',
  style:  TextStyle(
    color: color,
    fontSize: FontSize,
    fontWeight: FontWeight.bold,
  ),
);



