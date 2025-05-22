import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/App_Colors.dart';
import 'package:food_panda/Data/App_Strings.dart';
import 'package:food_panda/Data/App_Styles.dart';
import 'package:food_panda/Data/image_path.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 41.h,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.5),
                spreadRadius: 2.r,
                blurRadius: 8.r,
                offset: Offset(4, 0),
              ),
            ],
          ),
        ),
        leading: SizedBox(
          width: 18.w,
          height: 16.h,
          child: AssetImages(
            issvg: true,
            imagepath: ImagePath.alignsvg,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
                text: 'Home',
                style: AppStyles.textstyletwo(context,
                    color: AppColors.pink, FontWeight: FontWeight.bold)),
            CommonText(
                text: 'Johar Town Lahore',
                style: AppStyles.textstyleone(context,
                    FontWeight: FontWeight.w500))
          ],
        ),
        actions: [
          AssetImages(
            issvg: true,
            imagepath: ImagePath.heartsvg,
            width: 25.h,
            height: 25.h,
          ),
          AssetImages(
            issvg: true,
            imagepath: ImagePath.infosvg,
            width: 18.w,
            height: 16.h,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        //Parent column...
        child: Column(
          children: [
            Container(
              width: 315.w,
              height: 135.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CommonText(
                        text: AppStrings.goodevenig,
                      )
                    ],
                  ),
                  AssetImages(
                    issvg: false,
                    imagepath: ImagePath.fooddelivery,
                    width: 110.w,
                    height: 73.33.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
