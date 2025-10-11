import 'package:flutter/material.dart';

import 'package:my_new_app/data/models/cart_item.dart';
import 'package:my_new_app/data/models/item.dart';

class CartViewModel extends ChangeNotifier {
  final Map<String, CartItem> _cart = {};

  List<CartItem> get cartItems => _cart.values.toList(growable: false);

  double get totalPrice => _cart.values.fold(0, (total, entry) {
        return total + entry.lineTotal;
      });

  int get cartItemCount => _cart.values.fold(0, (count, entry) {
        return count + entry.quantity;
      });

  bool containsItem(String id) => _cart.containsKey(id);

  void addItem(Item item, {int quantity = 1}) {
    final existing = _cart[item.id];
    final newQuantity = (existing?.quantity ?? 0) + quantity;
    _cart[item.id] = CartItem(item: item, quantity: newQuantity);
    notifyListeners();
  }

  void decrementItem(String id) {
    final existing = _cart[id];
    if (existing == null) {
      return;
    }
    if (existing.quantity <= 1) {
      _cart.remove(id);
    } else {
      _cart[id] = existing.copyWith(quantity: existing.quantity - 1);
    }
    notifyListeners();
  }

  void removeItem(String id) {
    if (_cart.remove(id) != null) {
      notifyListeners();
    }
  }

  void clear() {
    if (_cart.isEmpty) {
      return;
    }
    _cart.clear();
    notifyListeners();
  }
}
