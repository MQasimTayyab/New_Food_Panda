import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Row ThreeContainers(BuildContext context) {
  return Row(
    children: [
      Column(
        children: [
          Container(
            width: 147.w,
            height: 199.h,
            decoration: BoxDecoration(
              color: AppColors.ellow,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AssetImages(
                      width: 110.w,
                      height: 73.h,
                      issvg: false,
                      imagepath: ImagePath.pandamart,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: AppStrings.pandamart,
                              style: AppStyles.textstylefour(context,
                                  fontWeight: FontWeight.w600),
                            ),
                            CommonText(
                              text: AppStrings.everydayupto20,
                              style: AppStyles.textstyletwo(context,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
      20.x,
      Column(
        children: [
          Container(
            width: 150.w,
            height: 122.h,
            decoration: BoxDecoration(
              color: AppColors.lightpink,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CommonText(
                        text: AppStrings.pickup,
                        style: AppStyles.textstylefour(context,
                            fontWeight: FontWeight.w600),
                      ),
                      CommonText(
                        text: AppStrings.everydayupto25,
                        style: AppStyles.textstyletwo(context),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AssetImages(
                        width: 60.w,
                        height: 55.h,
                        issvg: false,
                        imagepath: ImagePath.pickup),
                  ],
                )
              ],
            ),
          ),

          16.Y,
          //shop container
          Container(
            width: 150.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: AppColors.skblue,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CommonText(
                        text: AppStrings.shops,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.grocery,
                        style: AppStyles.textstyleone(
                          context,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AssetImages(
                        width: 50.w,
                        height: 42.h,
                        issvg: false,
                        imagepath: ImagePath.shops),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    ],
  );
}
