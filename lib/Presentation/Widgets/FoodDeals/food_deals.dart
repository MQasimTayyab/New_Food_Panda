import 'package:flutter/material.dart';

import 'package:food_panda/Data/app_colors.dart';

import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Widgets/FoodDeals/Components/banner.dart';

import 'package:food_panda/Presentation/Widgets/FoodDeals/Components/popular.dart';
import 'package:food_panda/Presentation/Widgets/FoodDeals/Components/subway_images.dart';

class FoodDeals extends StatelessWidget {
  const FoodDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //subway images components
            SubWay(context),
            //get rs fift....
            CustomBanner(
              context,
            ),
            //popular
            10.Y,

            Popular(context)
          ],
        ),
      ),
    );
  }
}
