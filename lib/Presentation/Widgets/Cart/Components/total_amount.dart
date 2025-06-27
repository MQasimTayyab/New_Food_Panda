import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Common/commonBtn.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Container Total(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.white,
      boxShadow: [
        BoxShadow(
            blurRadius: 2,
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(0, -3))
      ],
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 38, right: 38),
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
              ),
            ],
          ),
        ),
        10.Y,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 300.w,
                height: 45.h,
                child:
                    CommonButton(text: AppStrings.placeorder, onPressed: () {}))
          ],
        )
      ],
    ),
  );
}

// decoration: BoxDecoration(
//           color: AppColors.white,
//           boxShadow: [

//           ],
//         ),
