import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Padding Rider(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 2,
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(3, 3))
      ]),
      width: 315.w,
      height: 72.h,
      child: Row(
        children: [
          AssetImages(
            issvg: false,
            width: 53.w,
            height: 52.h,
            imagepath: ImagePath.rider,
          ),
          30.x,
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: AppStrings.estimatedeliver,
                  style: AppStyles.textstyletwo(context),
                ),
                CommonText(
                  text: AppStrings.nowtwentfive,
                  style: AppStyles.textstylefour(context),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
