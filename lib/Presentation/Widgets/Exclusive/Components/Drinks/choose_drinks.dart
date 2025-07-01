import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';

import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/drinks_controller.dart';

class ChooseDrinks extends StatefulWidget {
  static var entries;

  const ChooseDrinks({super.key});

  @override
  State<ChooseDrinks> createState() => _ChooseDrinksState();
}

class _ChooseDrinksState extends State<ChooseDrinks> {
  DrinksController Controller = DrinksController();
  // final Map<String, int> chooseDrinks = {
  //   'Pepsi': 124,
  //   '7up': 12,
  //   'Mirinda': 222,
  //   'Mountain Dew': 333,
  // };

  // final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
  // final ValueNotifier<String> selectedDrink = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    final entries = Controller.entries;
    return SizedBox(
        height: 135.h,
        child: ValueListenableBuilder<int>(
            valueListenable: Controller.selectedIndex,
            builder: (context, index, _) {
              return ListView.separated(
                  itemCount: entries.length,
                  separatorBuilder: (context, index) => SizedBox(height: 15.h),
                  itemBuilder: (context, index) {
                    final entry = entries[index];
                    final isSelected =
                        Controller.selectedIndex.value == entry.value;
                    // final isSelected = index == entry.key;
                    return GestureDetector(
                      onTap: () {
                        Controller.select(entry.key, entry.value);
                        // selectedIndex.value = entry.value;
                        // selectedDrink.value = entry.key;
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              width: 20.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.pink,
                                  width: isSelected ? 5.0 : 2.0,
                                ),
                              ),
                            ),
                            15.x,
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CommonText(
                                    text: entry.key,
                                    style: AppStyles.textstylethree(context),
                                  ),
                                  CommonText(
                                    text: entry.value.toString(),
                                    style: AppStyles.textstylethree(context,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            AppColors.black.withOpacity(0.7)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }));
  }
}

// Column ChooseDrinks() {
//   final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
//   final ValueNotifier<String> selectedFlavor = ValueNotifier<String>('');
//   return Column(
//     children: [
//       ValueListenableBuilder<int>(
//         valueListenable: selectedIndex,
//         builder: (context, index, _) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex.value = 0;
//               selectedFlavor.value = 'Pepsi';
//             },
//             child: Row(
//               children: [
//                 Container(
//                   width: 20.w,
//                   height: 20.h,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xffD60665),
//                       width: index == 0 ? 5.0 : 2.0,
//                     ),
//                   ),
//                 ),
//                 15.x,
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CommonText(
//                         text: AppStrings.pepsi,
//                         style: AppStyles.textstylethree(context),
//                       ),
//                       CommonText(
//                         text: AppStrings.rszerozero,
//                         style: AppStyles.textstylethree(context,
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.black.withOpacity(0.7)),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       14.Y,
//       //second drink..
//       ValueListenableBuilder<int>(
//         valueListenable: selectedIndex,
//         builder: (context, index, _) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex.value = 1;
//               selectedFlavor.value = '7UP';
//             },
//             child: Row(
//               children: [
//                 Container(
//                   width: 20.w,
//                   height: 20.h,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xffD60665),
//                       width: index == 1 ? 5.0 : 2.0,
//                     ),
//                   ),
//                 ),
//                 15.x,
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CommonText(
//                         text: AppStrings.sevenup,
//                         style: AppStyles.textstylethree(context),
//                       ),
//                       CommonText(
//                         text: AppStrings.rszerozero,
//                         style: AppStyles.textstylethree(context,
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.black.withOpacity(0.7)),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       14.Y,
//       //third drink
//       ValueListenableBuilder<int>(
//         valueListenable: selectedIndex,
//         builder: (context, index, _) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex.value = 2;
//               selectedFlavor.value = 'Mirinda';
//             },
//             child: Row(
//               children: [
//                 Container(
//                   width: 20.w,
//                   height: 20.h,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xffD60665),
//                       width: index == 2 ? 5.0 : 2.0,
//                     ),
//                   ),
//                 ),
//                 15.x,
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CommonText(
//                         text: AppStrings.mirinda,
//                         style: AppStyles.textstylethree(context),
//                       ),
//                       CommonText(
//                         text: AppStrings.rszerozero,
//                         style: AppStyles.textstylethree(context,
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.black.withOpacity(0.7)),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//       14.Y,
//       //four drink
//       ValueListenableBuilder<int>(
//         valueListenable: selectedIndex,
//         builder: (context, index, _) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex.value = 3;
//               selectedFlavor.value = 'Mountain drew';
//             },
//             child: Row(
//               children: [
//                 Container(
//                   width: 20.w,
//                   height: 20.h,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: const Color(0xffD60665),
//                       width: index == 3 ? 5.0 : 2.0,
//                     ),
//                   ),
//                 ),
//                 15.x,
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CommonText(
//                         text: AppStrings.mountaindrew,
//                         style: AppStyles.textstylethree(context),
//                       ),
//                       CommonText(
//                         text: AppStrings.rszerozero,
//                         style: AppStyles.textstylethree(context,
//                             fontWeight: FontWeight.w400,
//                             color: AppColors.black.withOpacity(0.7)),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     ],
//   );
// }
