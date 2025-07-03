import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';

import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/Flavor/flavour_controller.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/add_controller.dart';

class ChooseFlavor extends StatefulWidget {
  const ChooseFlavor({super.key});

  @override
  State<ChooseFlavor> createState() => _ChooseFlavor();
}

class _ChooseFlavor extends State<ChooseFlavor> {
  FlavourController flavourController = FlavourController();
  final SelectionController controller = SelectionController();
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
                    controller.selectedFlavour.value = entry.key;
                    controller.selectedFlavourPrice.value = entry.value;
                    // flavourController.select(entry.key, entry.value);
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
                              // Text(
                              //   '\$${entry.value}',
                              // )
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
