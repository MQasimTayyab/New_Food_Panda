import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Application/Services/Navigation_Services.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/exclusive_page.dart';

Padding Popular(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AssetImages(
                  width: 22.w,
                  height: 22.h,
                  issvg: true,
                  imagepath: ImagePath.firesvg,
                ),
                CommonText(
                  text: AppStrings.populr,
                  style: AppStyles.textstylefive(context),
                )
              ],
            ),
            CommonText(
              text: AppStrings.mostorderrightnow,
              style: AppStyles.textstylethree(context),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: AppStrings.exclusivesubwaydealone,
                  style: AppStyles.textstylethree(context,
                      fontWeight: FontWeight.bold),
                ),
                CommonText(
                  text: AppStrings.sixinchsub,
                  style: AppStyles.textstyleone(context),
                ),
                Row(
                  children: [
                    CommonText(
                      text: AppStrings.rsthirtythree,
                      style: AppStyles.textstyleone(context),
                    ),
                    10.x,
                    CommonText(
                      text: AppStrings.rstwofifity,
                      style: AppStyles.textstyleone(context),
                    )
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigate.to(context, ExclusivePage());
              },
              child: AssetImages(
                width: 92.w,
                height: 74.h,
                issvg: false,
                imagepath: ImagePath.exclusivessubwaydealone,
              ),
            )
          ],
        ),
        25.Y,

        //line
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.w,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
          ),
        ),

        15.Y,

        //drink and cookies
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CommonText(
                  text: AppStrings.drinksandcookie,
                  style: AppStyles.textstylethree(context,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    CommonText(
                      text: AppStrings.rsonesisty,
                      style: AppStyles.textstyleone(context),
                    ),
                    CommonText(
                      text: AppStrings.rstwofifity,
                      style: AppStyles.textstyleone(context),
                    )
                  ],
                )
              ],
            ),
            AssetImages(
              width: 90.w,
              height: 74.h,
              issvg: false,
              imagepath: ImagePath.drinksandcookie,
            )
          ],
        ),
        15.Y,
//line
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.w,
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
