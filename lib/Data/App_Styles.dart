import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/App_Colors.dart';
// extension TextScaler on BuildContext {
//   double get TextScaler {
//     final Textscale = MediaQuery.of(this).textScaler;
//     return Textscale > 1 ? 0.9 : Textscale ;
//   }
// }

class AppStyles {
  static TextStyle textstyleone(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? FontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 8.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
    );
  }

  static TextStyle textstyletwo(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? FontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 10.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
    );
  }

  static TextStyle textstylethree(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? FontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 12.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
    );
  }

  static TextStyle textstylefour(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? FontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 14.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
    );
  }
}
