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
                decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 5),
                  child: CommonText(
                    text: AppStrings.foodfestdeals,
                    style: AppStyles.textstylethree(context,
                        color: AppColors.white),
                  ),
                ),
              ),
            ),
            10.Y,

            //Tabbar
            Row(children: [
              Expanded(
                child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                        labelPadding: EdgeInsets.only(
                          right: 40,
                        ),
                        indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(width: 3.w, color: Colors.pink),
                        ),
                        indicatorPadding: EdgeInsets.only(bottom: 7),
                        unselectedLabelColor: Color(0xff000000),
                        labelColor: Color(0xff000000),
                        isScrollable: true,
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
                        ])),
              )
            ]),
          ]))
    ],
  );
}
