import 'package:flutter/material.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

Column ExclusiveText(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonText(
            text: AppStrings.exclusionsubwaydeal,
            style: AppStyles.textstylefive(context),
          ),
          CommonText(
            text: AppStrings.rsthirtythree,
            style: AppStyles.textstylethree(context),
          )
        ],
      ),
      CommonText(
        text: AppStrings.sixinchsub,
        style: AppStyles.textstylethree(context),
      )
    ],
  );
}
