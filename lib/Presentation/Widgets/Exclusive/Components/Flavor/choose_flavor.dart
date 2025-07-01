import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/flavour_controller.dart';

class ChooseFlavor extends StatefulWidget {
  const ChooseFlavor({super.key});

  @override
  State<ChooseFlavor> createState() => _ChooseFlavor();
}

class _ChooseFlavor extends State<ChooseFlavor> {
  FlavourController flavourController = FlavourController();
  // final Map<String, dynamic> chooseFlavour = {
  //   'Chicken Tikka': 12,
  //   'Chicken Teriyaki': 43,
  //   'Chicken Fajita': 243,
  //   'BBQ': 333,
  // };

  // final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
  // final ValueNotifier<String> selectedFlavor = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    // final entries = chooseFlavour.entries.toList();
    final entries = flavourController.entries;
    return SizedBox(
      height: 135.h,
      child: ValueListenableBuilder<int>(
        valueListenable: flavourController.selectedIndex,
        builder: (context, index, _) {
          return ListView.separated(
              itemCount: entries.length,
              separatorBuilder: (context, index) => SizedBox(height: 15.h),
              itemBuilder: (context, index) {
                final entry = entries[index];

                final isSelected =
                    flavourController.selectedIndex.value == entry.value;
                return GestureDetector(
                  onTap: () {
                    flavourController.select(entry.key, entry.value);
                    // selectedIndex.value = entry.value;
                    // selectedFlavor.value = entry.key;
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CommonText(
                                text: entry.key,
                                style: AppStyles.textstylethree(context),
                              ),
                              CommonText(
                                text: entry.value.toString(),
                                style: AppStyles.textstylethree(context,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black.withOpacity(0.7)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

// Column ChooseFlavor() {
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
//               selectedFlavor.value = 'Chicken Tikka';
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
//                         text: AppStrings.chickentikka,
//                         style: AppStyles.textstylethree(context),
//                       ),
//                       CommonText(
//                         text: AppStrings.rszerozero,
                        // style: AppStyles.textstylethree(context,
                        //     fontWeight: FontWeight.w400,
                        //     color: AppColors.black.withOpacity(0.7)),
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
//       //second flavour..
//       ValueListenableBuilder<int>(
//         valueListenable: selectedIndex,
//         builder: (context, index, _) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex.value = 1;
//               selectedFlavor.value = 'Chicken Teriyaki';
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
//                         text: AppStrings.chickenteriyaki,
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
//       //third flovor
//       ValueListenableBuilder<int>(
//         valueListenable: selectedIndex,
//         builder: (context, index, _) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex.value = 2;
//               selectedFlavor.value = 'Chicken Fajita';
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
//                         text: AppStrings.chickenfajita,
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
//       //four flover
//       ValueListenableBuilder<int>(
//         valueListenable: selectedIndex,
//         builder: (context, index, _) {
//           return GestureDetector(
//             onTap: () {
//               selectedIndex.value = 3;
//               selectedFlavor.value = 'BBQ';
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
//                         text: AppStrings.bbq,
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
