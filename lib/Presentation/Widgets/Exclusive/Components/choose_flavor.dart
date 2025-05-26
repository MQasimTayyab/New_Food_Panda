import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Column ChooseFlavor() {
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
              selectedFlavor.value = 'Chicken Tikka';
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
                        text: AppStrings.chickentikka,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      12.Y,
      //second flavour..
      ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, _) {
          return GestureDetector(
            onTap: () {
              selectedIndex.value = 1;
              selectedFlavor.value = 'Chicken Teriyaki';
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
                12.x,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: AppStrings.chickenteriyaki,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      12.Y,
      //third flovor
      ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, _) {
          return GestureDetector(
            onTap: () {
              selectedIndex.value = 2;
              selectedFlavor.value = 'Chicken Fajita';
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
                        text: AppStrings.chickenfajita,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      12.Y,
      //four flover
      ValueListenableBuilder<int>(
        valueListenable: selectedIndex,
        builder: (context, index, _) {
          return GestureDetector(
            onTap: () {
              selectedIndex.value = 3;
              selectedFlavor.value = 'BBQ';
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
                        text: AppStrings.bbq,
                        style: AppStyles.textstylethree(context),
                      ),
                      CommonText(
                        text: AppStrings.rszerozero,
                        style: AppStyles.textstylethree(context,
                            fontWeight: FontWeight.w400),
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
