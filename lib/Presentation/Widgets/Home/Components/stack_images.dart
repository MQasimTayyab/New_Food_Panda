import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

class StackImages extends StatelessWidget {
  final String imagepath;
  final String label;
  final String time;
  final String title;
  final String subtitle;
  final String deliveryfee;

  const StackImages(
      {super.key,
      required this.imagepath,
      required this.label,
      required this.time,
      required this.title,
      required this.subtitle,
      required this.deliveryfee});

  get fit => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            AssetImages(
                issvg: false,
                imagepath: imagepath,
                height: 100.h,
                width: 180.w,
                fit: fit ?? BoxFit.fill),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    width: 68.w,
                    height: 18.h,
                    decoration: BoxDecoration(
                      color: AppColors.pink,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Center(
                      child: CommonText(
                        text: label,
                        style: AppStyles.textstyleone(context,
                            color: AppColors.white),
                      ),
                    ),
                  ),
                ),
                40.Y,
                Container(
                  width: 40.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: CommonText(
                      text: time,
                      style: AppStyles.textstyleone(context),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        8.Y,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: title,
              style: AppStyles.textstylethree(
                context,
                fontWeight: FontWeight.bold,
              ),
            ),
            3.Y,
            CommonText(
              text: subtitle,
              style: AppStyles.textstylethree(context,
                  fontsize: 10.sp, fontWeight: FontWeight.w300),
            ),
            2.Y,
            CommonText(
              text: deliveryfee,
              style:
                  AppStyles.textstyleone(context, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
