import 'package:flutter/material.dart';

class AppLayout{
  static get height => null;

  static get width => null;

  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return height;
  }
  static getScreenWidth(){
    return width;
  }
  static getHeight(double pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }
  static getWidth(double pixels){
    double y = getScreenWidth()/pixels;
    return getScreenWidth()/y;
  }
}