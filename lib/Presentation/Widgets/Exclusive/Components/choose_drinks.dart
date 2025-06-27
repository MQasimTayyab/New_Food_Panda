import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';

import 'package:food_panda/Presentation/Common/common_text.dart';

Column ChooseDrinks() {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
  final ValueNotifier<String> selectedFlavor = ValueNotifier<String>('');
  return Column(
    children: [
      ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, _) {
          return GestureDetector(
            onTap: () {
              selectedIndex.value = 0;
              selectedFlavor.value = 'Pepsi';
            },
            child: Row(
              children: [
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffD60665),
                      width: index == 0 ? 5.0 : 2.0,
                    ),
                  ),
                ),
                15.x,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: AppStrings.pepsi,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      14.Y,
      //second drink..
      ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, _) {
          return GestureDetector(
            onTap: () {
              selectedIndex.value = 1;
              selectedFlavor.value = '7UP';
            },
            child: Row(
              children: [
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffD60665),
                      width: index == 1 ? 5.0 : 2.0,
                    ),
                  ),
                ),
                15.x,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: AppStrings.sevenup,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      14.Y,
      //third drink
      ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, _) {
          return GestureDetector(
            onTap: () {
              selectedIndex.value = 2;
              selectedFlavor.value = 'Mirinda';
            },
            child: Row(
              children: [
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffD60665),
                      width: index == 2 ? 5.0 : 2.0,
                    ),
                  ),
                ),
                15.x,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: AppStrings.mirinda,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      14.Y,
      //four drink
      ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, _) {
          return GestureDetector(
            onTap: () {
              selectedIndex.value = 3;
              selectedFlavor.value = 'Mountain drew';
            },
            child: Row(
              children: [
                Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffD60665),
                      width: index == 3 ? 5.0 : 2.0,
                    ),
                  ),
                ),
                15.x,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: AppStrings.mountaindrew,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ],
  );
}
