import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_panda/Application/Services/Navigation_Services.dart';
import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_strings.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Data/imagepath.dart';
import 'package:food_panda/Presentation/Common/commonBtn.dart';
import 'package:food_panda/Presentation/Common/common_images.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';
import 'package:food_panda/Presentation/Widgets/Cart/cart_page.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/choose_drinks.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/choose_flavor.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/exclusive_text.dart';

class ExclusivePage extends StatefulWidget {
  const ExclusivePage({super.key});

  @override
  State<ExclusivePage> createState() => _ExclusivePageState();
}

class _ExclusivePageState extends State<ExclusivePage> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(1);
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
  final ValueNotifier<String> selectedFlavor = ValueNotifier<String>('');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //exclusive image components
              // ExclusivePage(),
              Column(
                children: [
                  Stack(
                    children: [
                      AssetImages(
                        height: 210.h,
                        width: 375.w,
                        imagepath: ImagePath.exclusive,
                        issvg: false,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: Color(0xFFC4C4C4), shape: BoxShape.circle),
                          child: GestureDetector(
                            onTap: () {
                              Navigate.pop(context);
                            },
                            child: Center(
                              child: AssetImages(
                                width: 15.w,
                                height: 14.h,
                                issvg: true,
                                imagepath: ImagePath.back,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              30.Y,

              //exclusive parent colume
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    ExclusiveText(context),
                    20.Y,
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.w,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ),
                    15.Y,
                    //choose flavor
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: AppStrings.chooseyourflavor,
                              style: AppStyles.textstylethree(context),
                            ),
                            Container(
                              width: 54.w,
                              height: 16.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffB7D6F4),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: CommonText(
                                  text: AppStrings.onerequired,
                                  style: AppStyles.textstyleone(context),
                                ),
                              ),
                            )
                          ],
                        ),
                        5.Y,
                        CommonText(
                          text: AppStrings.select,
                          style: AppStyles.textstylethree(context),
                        )
                      ],
                    ),
                    10.Y,
                    //value notifer
                    //
                    ChooseFlavor(),
                    25.Y,

                    //choose drinks
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              text: AppStrings.chooseyoursoftdrink,
                              style: AppStyles.textstylethree(context),
                            ),
                            Container(
                              width: 54.w,
                              height: 16.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffB7D6F4),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: CommonText(
                                  text: AppStrings.onerequired,
                                  style: AppStyles.textstyleone(context),
                                ),
                              ),
                            )
                          ],
                        ),
                        5.Y,
                        CommonText(
                          text: AppStrings.select,
                          style: AppStyles.textstylethree(context),
                        )
                      ],
                    ),

                    10.Y,
                    //value
                    //drinks components
                    ChooseDrinks()
                  ],
                ),
              ),
              20.Y,

              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1.w,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
              20.Y,

              //button and increment

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ValueListenableBuilder<int>(
                        valueListenable: _counter,
                        builder: (context, value, child) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (_counter.value > 1) {
                                    _counter.value--;
                                  }
                                },
                                child: Container(
                                  width: 35.w,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                    color: value > 1
                                        ? AppColors.pink
                                        : Color(0xFFDADADA),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.remove,
                                    color: AppColors.white,
                                  )

                                      // child: CommonText(
                                      //   text: AppStrings.sub,
                                      //   style: AppStyles.textstylefive(context,
                                      //       color: AppColors.white),
                                      // ),
                                      ),
                                ),
                              ),
                              10.x,

                              // Counter value display
                              ValueListenableBuilder<int>(
                                valueListenable: _counter,
                                builder: (context, value, child) {
                                  return Center(
                                    child: CommonText(
                                      text: value.toString(),
                                      style: AppStyles.textstylefive(context),
                                    ),
                                  );
                                },
                              ),
                              10.x,

                              // Increment button
                              GestureDetector(
                                onTap: () {
                                  _counter.value++;
                                },
                                child: Container(
                                  width: 35.w,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.pink,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.white,
                                    ),
                                    // child: CommonText(
                                    //   text: AppStrings.add,
                                    //   style: AppStyles.textstylefive(context,
                                    //       color: AppColors.white),
                                    // ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                    CommonButton(
                        text: AppStrings.addtocart,
                        onPressed: () {
                          Navigate.to(context, CartPage());
                        })
                  ],
                ),
              ),

              // button
            ],
          ),
        ),
      ),
    );
  }
}
