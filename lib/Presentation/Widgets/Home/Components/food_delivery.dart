import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';

import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Row FoodDelivery(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 320.w,
        height: 135.h,
        decoration: BoxDecoration(
          color: AppColors.pink,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonText(
                    text: AppStrings.fooddelivery,
                    style: AppStyles.textstylefour(context,
                        color: AppColors.white),
                  ),
                  CommonText(
                    text: AppStrings.orderfoodyoulove,
                    style:
                        AppStyles.textstyletwo(context, color: AppColors.white),
                  )
                ],
              ),
            ),
            AssetImages(
              width: 140.w,
              height: 122.h,
              issvg: false,
              imagepath: ImagePath.foodd,
            )
          ],
        ),
      ),
    ],
  );
}
