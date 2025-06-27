import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:food_panda/Data/app_colors.dart';

import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';

import 'package:food_panda/Presentation/Common/common_text.dart';

class Counter extends StatefulWidget {
  const Counter(increment, {super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(1);
  void increment() {
    _counter.value++;
  }

  void decrement() {
    if (_counter.value > 1) {
      _counter.value--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      onTap: decrement,
                      // onTap: () {
                      //   if (_counter.value > 1) {
                      //     _counter.value--;
                      //   }
                      // },
                      child: Container(
                        width: 35.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: value > 1 ? AppColors.pink : Color(0xFFDADADA),
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
                      onTap: increment,

                      // onTap: () {
                      //   _counter.value++;
                      // },
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
        ],
      ),
    );
  }
}
