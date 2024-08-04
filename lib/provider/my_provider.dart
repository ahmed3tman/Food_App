import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cartItems = [];
  double totalPrice = 0.0;

  void addItemToCar(Map<String, dynamic> item) {
    cartItems.add(item);
    totalPrice += double.parse(item['priceText']);
    notifyListeners();
  }

  void removeItemFromCart(Map<String, dynamic> item) {
    cartItems.remove(item);
    totalPrice -= double.parse(item['priceText']);
    notifyListeners();
  }

  int get cartItemCount {
    return cartItems.length;
  }
}
