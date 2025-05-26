import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/commonBtn.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Cart/Components/rider_container.dart';
import 'package:food_panda/Presentation/Widgets/Cart/Components/sub_total.dart';
import 'package:food_panda/Presentation/Widgets/Cart/Components/total_amount.dart';
import 'package:food_panda/main.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
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
          imagepath: ImagePath.cross,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
                text: AppStrings.cart,
                style: AppStyles.textstyletwo(context,
                    color: AppColors.pink, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //rider components
              Rider(context),
              20.Y,
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 38.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: BoxShape.rectangle,
                        ),
                        child: Center(child: CommonText(text: '1')),
                      ),
                      10.x,
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonText(
                                  text: AppStrings.exclusivesubwaydealone,
                                  style: AppStyles.textstyletwo(context,
                                      color: AppColors.pink),
                                ),
                                CommonText(
                                  text: AppStrings.chickenteriyakimirnda,
                                  style: AppStyles.textstyleone(context),
                                ),
                              ],
                            ),
                            CommonText(
                              text: AppStrings.rsfiftyfive,
                              style: AppStyles.textstyleone(context),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  150.Y,
                  // subtatal compoents
                  SubTotal(context)
                ],
              ),
              350.Y,
              // total ammount compnents
              Total(context)
            ],
          ),
        ),
      ),
    );
  }
}
