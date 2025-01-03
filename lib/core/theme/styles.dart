import 'package:eataa/core/theme/color_app.dart';
import 'package:flutter/material.dart';

abstract  class Styles {
  static TextStyle textStyle24= const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: ColorApp.primaryColor,
  );
   static TextStyle textStyle25= const TextStyle(
    fontSize:25,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle textStyle18= const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorApp.secondaryColor,
  );
    static TextStyle textStyle16= const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

}