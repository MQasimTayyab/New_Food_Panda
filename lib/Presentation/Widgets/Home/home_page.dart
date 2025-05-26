import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Application/Services/Navigation_Services.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/FoodDeals/food_deals.dart';

import 'package:food_panda/Presentation/Widgets/Home/Components/appbar.dart';
import 'package:food_panda/Presentation/Widgets/Home/Components/food_delivery.dart';
import 'package:food_panda/Presentation/Widgets/Home/Components/good_evening.dart';
import 'package:food_panda/Presentation/Widgets/Home/Components/three_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      //Appbar components..
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //goodeving
              GoodEvening(context),
              Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(3),
                            child: Icon(
                              Icons.search,
                              color: AppColors.pink,
                            ),
                          ),
                          labelText: 'Search for shops & resturants',
                          labelStyle: AppStyles.textstyleone(context)))
                ],
              ),
              // 3.Y,
              //food deliver components
              FoodDelivery(context),
              //
              15.Y,
              //pandamart,pickup and shop container

              ThreeContainers(context),
              20.Y,

              Row(
                children: [
                  CommonText(
                    text: AppStrings.yourresturants,
                    style: AppStyles.textstylefour(context),
                  )
                ],
              ),
              15.Y,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigate.to(context, FoodDeals());
                          },
                          child: Stack(
                            children: [
                              AssetImages(
                                issvg: false,
                                imagepath: ImagePath.imageone,
                                // width: 203.w,
                                height: 100.h,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Container(
                                      width: 68.w,
                                      height: 18.h,
                                      decoration: BoxDecoration(
                                          color: AppColors.pink,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(50.r),
                                              bottomRight:
                                                  Radius.circular(50.r))),
                                      child: Center(
                                        child: CommonText(
                                          text: AppStrings.foodfestdeals,
                                          style: AppStyles.textstyleone(context,
                                              color: AppColors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  30.Y,
                                  //30mints
                                  Container(
                                    width: 40.w,
                                    height: 21.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: CommonText(
                                        text: AppStrings.thirtymints,
                                        style: AppStyles.textstyleone(
                                          context,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: AppStrings.subwaylahore,
                              style: AppStyles.textstylefour(context),
                            ),
                            CommonText(
                              text: AppStrings.fastfoodamerican,
                              style: AppStyles.textstyleone(context),
                            ),
                            CommonText(
                              text: AppStrings.pkrsixtydelivery,
                              style: AppStyles.textstylethree(context),
                            )
                          ],
                        )
                      ],
                    ),
                    5.x,
                    //image two container start...
                    Column(
                      children: [
                        Stack(
                          children: [
                            AssetImages(
                              issvg: false,
                              imagepath: ImagePath.drinksandcookie,
                              // width: 104.w,
                              height: 99.h,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Container(
                                    width: 68.w,
                                    height: 18.h,
                                    decoration: BoxDecoration(
                                        color: AppColors.pink,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(50),
                                            bottomRight: Radius.circular(50))),
                                    child: Center(
                                      child: CommonText(
                                        text: AppStrings.foodfestdeals,
                                        style: AppStyles.textstyleone(context,
                                            color: AppColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                50.Y,
                                //30mints
                                Container(
                                  width: 40.w,
                                  height: 21.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: CommonText(
                                      text: AppStrings.thirtymints,
                                      style: AppStyles.textstyleone(
                                        context,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: AppStrings.broadway,
                              style: AppStyles.textstylefour(context),
                            ),
                            CommonText(
                              text: AppStrings.fastfoodamerican,
                              style: AppStyles.textstyleone(context),
                            ),
                            CommonText(
                              text: AppStrings.pkrsixtydelivery,
                              style: AppStyles.textstylethree(context),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
