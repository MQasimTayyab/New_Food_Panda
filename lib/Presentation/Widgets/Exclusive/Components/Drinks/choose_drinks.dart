import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';

import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';

import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/Drinks/drinks_controller.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/add_controller.dart';

class ChooseDrinks extends StatefulWidget {
  static var entries;

  const ChooseDrinks({super.key});

  @override
  State<ChooseDrinks> createState() => _ChooseDrinksState();
}

class _ChooseDrinksState extends State<ChooseDrinks> {
  final SelectionController controller = SelectionController();
  DrinksController drinksController = DrinksController();

  @override
  Widget build(BuildContext context) {
    final entries = drinksController.entries;
    return SizedBox(
        height: 135.h,
        child: ValueListenableBuilder<int>(
            valueListenable: drinksController.selectedIndex,
            builder: (context, index, _) {
              return ListView.separated(
                  itemCount: entries.length,
                  separatorBuilder: (context, index) => SizedBox(height: 15.h),
                  itemBuilder: (context, index) {
                    final entry = entries[index];
                    final isSelected =
                        drinksController.selectedIndex.value == entry.value;
                    // final isSelected = index == entry.key;
                    return GestureDetector(
                      onTap: () {
                        drinksController.select(entry.key, entry.value);
                        controller.selectedDrink.value = entry.key;
                        controller.selectedDrinkPrice.value = entry.value;
                        // Controller.select(entry.key, entry.value);
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
