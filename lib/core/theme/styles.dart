import 'package:eataa/core/theme/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract  class Styles {
  static TextStyle textStyle22=   GoogleFonts.tajawal(
    fontSize: 22.sp,
    fontWeight: FontWeight.w900,
    color: ColorApp.primaryColor,
  );
   static TextStyle textStyle25=   GoogleFonts.tajawal(
    fontSize:25.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle textStyle18=   GoogleFonts.tajawal(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
    static TextStyle textStyle16=   GoogleFonts.tajawal
(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white
  );

 static TextStyle textStyle16semibold= GoogleFonts.tajawal
(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white
  );

   static TextStyle textStyle14=   GoogleFonts.tajawal
(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white
  );

}