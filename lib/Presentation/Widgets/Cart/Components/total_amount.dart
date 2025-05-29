import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Common/commonBtn.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Column Total(BuildContext context) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1.r,
              spreadRadius: 1.r,
              color: Colors.grey.withOpacity(0.7),
            ),
          ],
        ),
      ),
      10.Y,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              text: AppStrings.total,
              style: AppStyles.textstylefour(context),
            ),
            CommonText(
              text: AppStrings.rsfoureigh,
              style: AppStyles.textstylefour(context),
            )
          ],
        ),
      ),
      10.Y,
      SizedBox(
          width: 300.w,
          height: 45.h,
          child: CommonButton(text: AppStrings.placeorder, onPressed: () {}))
    ],
  );
}
