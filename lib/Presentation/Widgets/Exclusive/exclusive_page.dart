import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Application/Services/Navigation_Services.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/commonBtn.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Cart/cart_page.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/choose_drinks.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/choose_flavor.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/exclusive_text.dart';

class ExclusivePage extends StatefulWidget {
  const ExclusivePage({super.key});

  @override
  State<ExclusivePage> createState() => _ExclusivePageState();
}

class _ExclusivePageState extends State<ExclusivePage> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
  final ValueNotifier<String> selectedFlavor = ValueNotifier<String>('');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //exclusive image components
            // ExclusivePage(),
            Stack(
              children: [
                AssetImages(
                  height: 210.h,
                  imagepath: ImagePath.exclusive,
                  issvg: false,
                ),
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                  child: AssetImages(
                    issvg: true,
                    imagepath: ImagePath.alignsvg,
                  ),
                ),
              ],
            ),
            10.Y,

            //exclusive parent colume
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  ExclusiveText(context),
                  5.Y,
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
                  5.Y,
                  //choose flavor
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            text: AppStrings.chooseyourflavor,
                            style: AppStyles.textstylethree(context),
                          ),
                          Container(
                            width: 54.w,
                            height: 16.h,
                            decoration: BoxDecoration(
                                color: Color(0xffB7D6F4),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: CommonText(
                                text: AppStrings.onerequired,
                                style: AppStyles.textstyleone(context),
                              ),
                            ),
                          )
                        ],
                      ),
                      CommonText(
                        text: AppStrings.select,
                        style: AppStyles.textstylethree(context),
                      )
                    ],
                  ),
                  //value notifer
                  //
                  ChooseFlavor(),
                  25.Y,

                  //choose drinks
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            text: AppStrings.chooseyoursoftdrink,
                            style: AppStyles.textstylethree(context),
                          ),
                          Container(
                            width: 54.w,
                            height: 16.h,
                            decoration: BoxDecoration(
                                color: Color(0xffB7D6F4),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: CommonText(
                                text: AppStrings.onerequired,
                                style: AppStyles.textstyleone(context),
                              ),
                            ),
                          )
                        ],
                      ),
                      CommonText(
                        text: AppStrings.select,
                        style: AppStyles.textstylethree(context),
                      )
                    ],
                  ),
                  10.Y,
                  //value
                  //drinks components
                  ChooseDrinks()
                ],
              ),
            ),
            //button and increment
            15.Y,
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
            // button

            CommonButton(
                text: AppStrings.addtocart,
                onPressed: () {
                  Navigate.to(context, CartPage());
                })
          ],
        ),
      ),
    );
  }
}
