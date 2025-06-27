import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Application/Services/Navigation_Services.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Column SubWay(BuildContext context) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            color: Color(0xffEBDBE2),
            height: 211.h,
            width: 414.w,
            child: AssetImages(
              issvg: false,
              imagepath: ImagePath.subwayjohar,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                  child: GestureDetector(
                    onTap: () {
                      Navigate.pop(context);
                    },
                    child: Center(
                      child: AssetImages(
                        width: 15.w,
                        height: 14.h,
                        issvg: true,
                        imagepath: ImagePath.back,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                      child: Center(
                        child: AssetImages(
                          width: 15.w,
                          height: 17.h,
                          issvg: true,
                          imagepath: ImagePath.sharesvg,
                        ),
                      ),
                    ),
                    5.x,
                    Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                      child: Center(
                        child: AssetImages(
                          width: 20.w,
                          height: 20.h,
                          issvg: true,
                          imagepath: ImagePath.infosvg,
                        ),
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
                  style:
                      AppStyles.textstylefive(context, color: AppColors.white),
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
                      style: AppStyles.textstyleone(
                        context,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                10.Y,
                CommonText(
                  text: AppStrings.starfour,
                  style:
                      AppStyles.textstyleone(context, color: AppColors.white),
                )
              ],
            ),
          )
        ],
      ),
    ],
  );
}
