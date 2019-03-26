import 'package:flutter/material.dart';

class GlobalConfig {
  static bool dark = true;
  static ThemeData themeData = new ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: Colors.cyan[600],
  );
  static Color searchBackgroundColor = Colors.white10;
  static Color cardBackgroundColor = new Color(0xFF222222);
  static Color fontColor = Colors.white30;
}