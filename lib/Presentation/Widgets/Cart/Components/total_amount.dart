import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Common/commonBtn.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/add_controller.dart'; // Assuming controller is here

Container Total(BuildContext context) {
  final SelectionController controller = SelectionController();

  return Container(
    decoration: BoxDecoration(
      color: AppColors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 2,
          color: Colors.grey.withOpacity(0.5),
          offset: const Offset(0, -3),
        ),
      ],
    ),
    child: Column(
      children: [
        /// Subtotal Section
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 38),
          child: ValueListenableBuilder<int>(
            valueListenable: controller.totalPrice,
            builder: (context, total, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: 'Subtotal',
                    style: AppStyles.textstylefive(context),
                  ),
                  CommonText(
                    text: '${total.toString()}',
                    style: AppStyles.textstylefive(
                      context,
                      color: AppColors.black,
                    ),
                  ),
                ],
              );
            },
          ),
        ),

        /// Place Order Button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              height: 45.h,
              child: CommonButton(
                text: AppStrings.placeorder,
                onPressed: () {
                  // Place order logic here
                },
              ),
            ),
          ],
        ),
        10.Y,
      ],
    ),
  );
}
