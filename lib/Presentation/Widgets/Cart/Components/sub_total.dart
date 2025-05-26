import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Column SubTotal(BuildContext context) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonText(
            text: AppStrings.subtotal,
            style: AppStyles.textstylefour(context),
          ),
          CommonText(
            text: AppStrings.rsfivesixt,
            style: AppStyles.textstyletwo(context),
          )
        ],
      ),
      10.Y,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonText(
            text: AppStrings.discount,
            style: AppStyles.textstyletwo(context),
          ),
          Container(
            width: 54.w,
            height: 16.h,
            decoration: BoxDecoration(
                color: Color(0xffF0D4DD),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: CommonText(
                text: AppStrings.rstwotwentseven,
                style: AppStyles.textstyleone(context),
              ),
            ),
          )
        ],
      ),
      10.Y,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonText(
            text: AppStrings.deliveryfee,
            style: AppStyles.textstyletwo(context),
          ),
          CommonText(
            text: AppStrings.rsonesisty,
            style: AppStyles.textstyleone(context),
          )
        ],
      ),
      10.Y,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonText(
            text: AppStrings.vat,
            style: AppStyles.textstyletwo(context),
          ),
          CommonText(
            text: AppStrings.rseighnine,
            style: AppStyles.textstyleone(context),
          )
        ],
      ),
      10.Y,
      Row(
        children: [
          AssetImages(
            imagepath: ImagePath.firesvg,
            issvg: true,
          ),
          20.x,
          CommonText(
            text: AppStrings.applyavoucher,
            style: AppStyles.textstylefour(context, color: AppColors.pink),
          )
        ],
      )
    ],
  );
}
