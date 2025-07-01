import 'package:flutter/material.dart';

class DrinksController {
  final Map<String, int> chooseDrinks = {
    'Pepsi': 123,
    '7up': 12,
    'Mirinda': 222,
    'Mountain Dew': 3333,
  };

  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(-1);
  final ValueNotifier<String> selectedDrink = ValueNotifier<String>('');

  List<MapEntry<String, int>> get entries => chooseDrinks.entries.toList();

  void select(String name, int value) {
    selectedIndex.value = value;
    selectedDrink.value = name;
  }
}
