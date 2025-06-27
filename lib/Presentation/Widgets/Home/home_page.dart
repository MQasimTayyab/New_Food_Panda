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
import 'package:food_panda/Presentation/Widgets/Home/Components/stack_images.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Good Evening
              GoodEvening(context),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    15.Y,
                    Column(
                      children: [
                        Container(
                          // width: 320.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(3, 3),
                                )
                              ]),
                          child: TextField(
                              decoration: InputDecoration(
                            label: CommonText(
                              text: AppStrings.searchforshops,
                              style: AppStyles.textstyletwo(context,
                                  color: AppColors.black.withOpacity(0.5)),
                            ),
                            border: InputBorder.none,
                            prefixIcon: Padding(
                                padding: EdgeInsets.all(3),
                                child: AssetImages(
                                  width: 20.w,
                                  height: 18.h,
                                  imagepath: ImagePath.searchsvg,
                                )),
                            // labelText: 'Search for shops & resturants',

                            // labelStyle: AppStyles.textstyletwo(context,
                            //     color:
                            //         AppColors.black.withOpacity(0.5))
                          )),
                        )
                      ],
                    ),
                    15.Y,
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
                          GestureDetector(
                            onTap: () {
                              Navigate.to(context, FoodDeals());
                            },
                            child: StackImages(
                                imagepath: ImagePath.imageone,
                                label: AppStrings.foodfestdeals,
                                time: AppStrings.thirtymints,
                                title: AppStrings.subwaylahore,
                                subtitle: AppStrings.fastfoodamerican,
                                deliveryfee: AppStrings.pkrsixtydelivery),
                          ),

                          5.x,
                          //image two container start...
                          StackImages(
                            imagepath: ImagePath.broadway,
                            label: AppStrings.foodfestdeals,
                            time: AppStrings.thirtymints,
                            title: AppStrings.broadway,
                            subtitle: AppStrings.fastfoodamerican,
                            deliveryfee: AppStrings.pkrsixtydelivery,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
