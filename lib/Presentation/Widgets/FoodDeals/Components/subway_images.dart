import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Stack SubWay(BuildContext context) {
  return Stack(
    children: [
      Container(
        color: Color(0xffEBDBE2),
        height: 211.h,
        child: AssetImages(
          issvg: false,
          imagepath: ImagePath.subwayjohar,
          fit: BoxFit.fill,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4), shape: BoxShape.circle),
              child: AssetImages(
                issvg: true,
                imagepath: ImagePath.cross,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                  child: AssetImages(
                    issvg: true,
                    imagepath: ImagePath.cross,
                  ),
                ),
                5.x,
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                  child: AssetImages(
                    issvg: true,
                    imagepath: ImagePath.cross,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 55),
        child: Column(
          children: [
            Center(
                child: CommonText(
              text: AppStrings.subwayjohartown,
              style: AppStyles.textstylefive(context, color: AppColors.white),
            )),
            10.Y,
            Container(
              width: 82.w,
              height: 26.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: CommonText(
                  text: AppStrings.deliverythirty,
                  style:
                      AppStyles.textstyleone(context, color: AppColors.white),
                ),
              ),
            ),
            10.Y,
            CommonText(
              text: AppStrings.starfour,
              style: AppStyles.textstyleone(context, color: AppColors.white),
            )
          ],
        ),
      )
    ],
  );
}
