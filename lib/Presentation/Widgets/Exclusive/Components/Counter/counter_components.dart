// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:food_panda/Data/app_colors.dart';

// import 'package:food_panda/Data/app_styles.dart';
// import 'package:food_panda/Data/extenstions.dart';
// import 'package:food_panda/Presentation/Widgets/Exclusive/add_controller.dart';
// import 'counter_controller.dart';

// import 'package:food_panda/Presentation/Common/common_text.dart';

// class Counter extends StatefulWidget {
//   const Counter(increment, {super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   CounterController counter = CounterController();
//    final SelectionController controller = SelectionController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           ValueListenableBuilder<int>(
//               valueListenable: counter.counterValue,
//               builder: (context, value, child) {
//                 return Row(
//                   children: [
//                     GestureDetector(
//                       onTap:
//                        if (controller.quantity.value > 1) {
//                     controller.updateQuantity(controller.quantity.value - 1);
//                   }
//                       // onTap: () {
//                       //   if (_counter.value > 1) {
//                       //     _counter.value--;
//                       //   }
//                       // },
//                       child: Container(
//                         width: 35.w,
//                         height: 35.h,
//                         decoration: BoxDecoration(
//                           color:  controller.quantity.value > 1 ? AppColors.pink : Color(0xFFDADADA),
//                           shape: BoxShape.circle,
//                         ),
//                         child: Center(
//                             child: Icon(
//                           Icons.remove,
//                           color: AppColors.white,
//                         )

//                             // child: CommonText(
//                             //   text: AppStrings.sub,
//                             //   style: AppStyles.textstylefive(context,
//                             //       color: AppColors.white),
//                             // ),
//                             ),
//                       ),
//                     ),
//                     10.x,

//                     // Counter value display
//                     ValueListenableBuilder<int>(
//                       valueListenable: counter.counterValue,controller.quantity,
//                       builder: (context, value, child) {
//                         return Center(
//                           child: CommonText(
//                             text: value.toString(),
//                             style: AppStyles.textstylefive(context),
//                           ),
//                         );
//                       },
//                     ),
//                     10.x,

//                     // Increment button
//                     GestureDetector(
//                       onTap: counter.increment,
//                          controller.updateQuantity(controller.quantity.value + 1);

//                       // onTap: () {
//                       //   _counter.value++;
//                       // },
//                       child: Container(
//                         width: 35.w,
//                         height: 35.h,
//                         decoration: BoxDecoration(
//                           color: AppColors.pink,
//                           shape: BoxShape.circle,
//                         ),
//                         child: Center(
//                           child: Icon(
//                             Icons.add,
//                             color: AppColors.white,
//                           ),
//                           // child: CommonText(
//                           //   text: AppStrings.add,
//                           //   style: AppStyles.textstylefive(context,
//                           //       color: AppColors.white),
//                           // ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               }),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:food_panda/Data/app_colors.dart';
import 'package:food_panda/Data/app_styles.dart';
import 'package:food_panda/Data/extenstions.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/add_controller.dart';
import 'counter_controller.dart';
import 'package:food_panda/Presentation/Common/common_text.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final CounterController counter = CounterController();
  final SelectionController controller = SelectionController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ValueListenableBuilder<int>(
            valueListenable: controller.quantity,
            builder: (context, quantityValue, _) {
              return Row(
                children: [
                  // Decrement Button
                  GestureDetector(
                    onTap: () {
                      if (quantityValue > 1) {
                        controller.updateQuantity(quantityValue - 1);
                      }
                    },
                    child: Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: quantityValue > 1
                            ? AppColors.pink
                            : const Color(0xFFDADADA),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(Icons.remove, color: AppColors.white),
                      ),
                    ),
                  ),
                  10.x,

                  // Quantity Text
                  CommonText(
                    text: quantityValue.toString(),
                    style: AppStyles.textstylefive(context),
                  ),
                  10.x,

                  // Increment Button
                  GestureDetector(
                    onTap: () {
                      controller.updateQuantity(quantityValue + 1);
                    },
                    child: Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: const BoxDecoration(
                        color: AppColors.pink,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
