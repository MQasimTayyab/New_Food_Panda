import 'package:flutter/material.dart';

extension emptySpace on num {
  SizedBox get Y => SizedBox(height: toDouble());

  SizedBox get x => SizedBox(width: toDouble());
}
