import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/exclusive_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(41.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      toolbarHeight: 41.h,
      elevation: 1.0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(4, 0),
            ),
          ],
        ),
      ),
      leading: AssetImages(
        fit: BoxFit.scaleDown,
        width: 18.w,
        height: 16.h,
        issvg: true,
        imagepath: ImagePath.alignsvg,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
              text: 'Home',
              style: AppStyles.textstyletwo(context,
                  color: AppColors.pink, fontWeight: FontWeight.bold)),
          CommonText(
              text: 'Johar Town Lahore',
              style:
                  AppStyles.textstyleone(context, fontWeight: FontWeight.w500))
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: AssetImages(
            issvg: true,
            imagepath: ImagePath.heartsvg,
            width: 25.h,
            height: 25.h,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: AssetImages(
            issvg: true,
            imagepath: ImagePath.cartsvg,
            width: 30.w,
            height: 16.h,
          ),
        )
      ],
    );
  }
}
