import 'package:flutter/material.dart';

extension emptySpace on num {
  SizedBox get Y => SizedBox(height: toDouble());

  SizedBox get x => SizedBox(width: toDouble());
}

//text factor
extension ScaleExtension on BuildContext {
  double get textScale => MediaQuery.of(this).textScaleFactor;
}

// extension ScaleExtension on BuildContext {
//   double get textScale =>
//       MediaQuery.of(this).textScaler.scale(AppStyles().textScaleFactor);
// }
