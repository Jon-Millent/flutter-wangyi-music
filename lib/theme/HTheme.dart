import 'package:flutter/material.dart';
import 'package:flutter_music/util/Adapt.dart';

class HTheme {

  static Map<String, Color> defaultThemeColors = {
    'backgroundColor': Color.fromRGBO(255, 99, 2, 1),
    'textColor': Color.fromRGBO(255, 255, 255, 1),
    'borderColor': Color.fromRGBO(255, 99, 2, 1),
  };
  static Map<String, double> defaultThemeSize = {
    'fontSize': Adapt.getPx(30),
    'borderRadius': Adapt.getPx(10),
    'height': Adapt.getPx(70)
  };

}