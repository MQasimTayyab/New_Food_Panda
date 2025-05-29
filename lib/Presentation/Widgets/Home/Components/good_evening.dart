import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Padding GoodEvening(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              AssetImages(
                issvg: false,
                imagepath: ImagePath.goodevening,
                width: 110.w,
                height: 73.33.h,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: AppStrings.goodevenig,
                  style: AppStyles.textstylefour(context,
                      fontWeight: FontWeight.bold),
                ),
                CommonText(
                  text: AppStrings.whatsfordinner,
                  style: AppStyles.textstyletwo(context),
                )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
