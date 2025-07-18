import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';

// extension ScaleExtension on BuildContext {
//   double get textScale => MediaQuery.of(this).textScaler.scale(1);
//   // double get textScale => MediaQuery.of(this).textScaleFactor;
// }

class AppStyles {
  // static const TextScaler textScaler = TextScaler.linear(1.2);
  static TextStyle textstyleone(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 8.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
      fontWeight: fontWeight ?? FontWeight.w500,
    );
  }

  static TextStyle textstyletwo(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
        fontSize: fontsize ?? 10.sp,
        color: color ?? AppColors.black,
        fontFamily: fontFamily ?? 'Poppine',
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle textstylethree(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 12.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
      fontWeight: fontWeight ?? FontWeight.w500,
    );
  }

  static TextStyle textstylefour(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 14.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
      fontWeight: fontWeight ?? FontWeight.w600,
    );
  }

  static TextStyle textstylefive(
    BuildContext context, {
    double? fontsize,
    Color? color,
    FontWeight? fontWeight,
    String? fontFamily,
  }) {
    return TextStyle(
      fontSize: fontsize ?? 22.sp,
      color: color ?? AppColors.black,
      fontFamily: fontFamily ?? 'Poppine',
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
}
