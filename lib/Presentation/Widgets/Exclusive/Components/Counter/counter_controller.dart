import 'package:flutter/material.dart';

class CounterController {
  final ValueNotifier<int> counterValue = ValueNotifier<int>(1);

  void increment() {
    counterValue.value++;
  }

  void decrement() {
    if (counterValue.value > 1) {
      counterValue.value--;
    }
  }
}
