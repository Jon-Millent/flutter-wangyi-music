import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

class Adapt {
  static init(BuildContext context){
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
  }
  static getW(int width){
    return ScreenUtil.getInstance().setWidth(width);
  }
  static getH(int height){
    return ScreenUtil.getInstance().setWidth(height);
  }
  static getFont(int fontSize){
    return ScreenUtil.getInstance().setSp(fontSize);
  }
  static getPx(int width){
    return ScreenUtil.getInstance().setWidth(width);
  }
  static getPhoneHeight(){
    return ScreenUtil.screenHeight;
  }
  static getPhoneWidth(){
    return ScreenUtil.screenWidth;
  }
}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}