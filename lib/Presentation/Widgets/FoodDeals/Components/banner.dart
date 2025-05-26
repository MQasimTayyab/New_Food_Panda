import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Column CustomBanner(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 97.h,
        color: Color(0xffEBDBE2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: CommonText(
                  text: AppStrings.getrs,
                  style: AppStyles.textstyletwo(context, color: AppColors.pink),
                ),
              ),
            ),
            AssetImages(
              width: 95.w,
              height: 47.h,
              issvg: false,
              imagepath: ImagePath.shops,
            )
          ],
        ),
      ),
      //tab container
      Container(
        height: 110.h,
        color: AppColors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 315.w,
                height: 45.h,
                color: AppColors.pink,
                child: CommonText(
                  text: AppStrings.foodfestdeals,
                  style:
                      AppStyles.textstylethree(context, color: AppColors.white),
                ),
              ),
            ),
          ],
        ),
      )

      //
    ],
  );
}
