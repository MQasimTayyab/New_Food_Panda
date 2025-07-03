import 'package:flutter/material.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/Drinks/drinks_controller.dart';
import 'package:food_panda/Presentation/Widgets/Exclusive/Components/Flavor/flavour_controller.dart';

class SelectionController {
  static final SelectionController _instance = SelectionController._internal();

  factory SelectionController() => _instance;

  SelectionController._internal() {
    selectedDrinkPrice.addListener(_updateTotal);
    selectedFlavourPrice.addListener(_updateTotal);
    quantity.addListener(_updateTotal);
  }

  final DrinksController drinksController = DrinksController();
  final FlavourController flavourController = FlavourController();

  final ValueNotifier<String> selectedFlavour = ValueNotifier('');
  final ValueNotifier<int> selectedFlavourPrice = ValueNotifier(0);

  final ValueNotifier<String> selectedDrink = ValueNotifier('');
  final ValueNotifier<int> selectedDrinkPrice = ValueNotifier(0);

  final ValueNotifier<int> quantity = ValueNotifier(1);

  final ValueNotifier<int> totalPrice = ValueNotifier(0);

  void _updateTotal() {
    totalPrice.value = (selectedDrinkPrice.value + selectedFlavourPrice.value) *
        quantity.value;
  }

  void updateQuantity(int qty) {
    if (qty > 0) {
      quantity.value = qty;
    }
  }
}
