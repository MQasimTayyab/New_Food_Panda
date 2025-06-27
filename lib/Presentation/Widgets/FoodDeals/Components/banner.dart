import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Column CustomBanner(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 90.h,
        color: Color(0xffEBDBE2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: CommonText(
                  text: AppStrings.getrs,
                  style: AppStyles.textstylethree(
                    context,
                    color: AppColors.pink,
                  ),
                ),
              ),
            ),
            AssetImages(
              // width: 95.w,
              height: 47.h,
              issvg: false,
              imagepath: ImagePath.panda,
            )
          ],
        ),
      ),
      //tab container
      Container(
          height: 125.h,
          width: 375.w,
          decoration: BoxDecoration(color: AppColors.white, boxShadow: [
            BoxShadow(
                blurRadius: 2,
                color: Colors.grey.withOpacity(0.7),
                offset: Offset(0, 3))
          ]),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 315.w,
                height: 45.h,
                padding: EdgeInsets.only(top: 5.sp, left: 10.sp),
                decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(5)),
                child: CommonText(
                  text: AppStrings.foodfestdeals,
                  style:
                      AppStyles.textstylethree(context, color: AppColors.white),
                ),
              ),
            ),
            10.Y,

            //Tabbar
            Expanded(
              child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      padding: EdgeInsets.symmetric(horizontal: 30.sp),
                      labelPadding: EdgeInsets.only(
                        right: 32.sp,
                      ),
                      indicator: UnderlineTabIndicator(
                        borderSide:
                            BorderSide(width: 3.w, color: AppColors.pink),
                      ),
                      indicatorPadding: EdgeInsets.only(bottom: 5),
                      unselectedLabelColor: AppColors.black,
                      labelColor: AppColors.black,
                      dividerHeight: 0,
                      tabs: [
                        Tab(
                          child: CommonText(
                            text: AppStrings.populr,
                            style: AppStyles.textstylethree(context),
                          ),
                        ),
                        Tab(
                          child: CommonText(
                            text: AppStrings.exclusionsubwaydeal,
                            style: AppStyles.textstylethree(context),
                          ),
                        ),
                        Tab(
                          child: CommonText(
                            text: AppStrings.crazydeal,
                            style: AppStyles.textstylethree(context),
                          ),
                        ),
                        // Tab(
                        //   child: CommonText(
                        //     text: AppStrings.crazydeal,
                        //     style: AppStyles.textstylethree(context),
                        //   ),
                        // ),
                      ])),
            ),
          ]))
    ],
  );
}
