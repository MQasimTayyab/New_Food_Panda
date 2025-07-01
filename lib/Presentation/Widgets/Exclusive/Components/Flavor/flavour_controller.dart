import 'package:flutter/material.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/choose_drinks.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/choose_flavor.dart';

class FlavourController {
  final Map<String, int> chooseFlavor = {
    'Chicken Tikka': 12,
    'Chicken Teriyaki': 43,
    'Chicken Fajita': 243,
    'BBQ': 333,
  };

  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
  final ValueNotifier<String> selectedFlavor = ValueNotifier<String>('');

  List<MapEntry<String, int>> get entries => chooseFlavor.entries.toList();

  void select(String name, int value) {
    selectedIndex.value = value;
    selectedFlavor.value = name;
  }
}
