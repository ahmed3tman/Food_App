import 'package:flutter/foundation.dart';

import 'item.dart';

/// Represents an item stored in the cart with its quantity.
@immutable
class CartItem {
  const CartItem({
    required this.item,
    required this.quantity,
  });

  final Item item;
  final int quantity;

  double get lineTotal => item.price * quantity;

  CartItem copyWith({Item? item, int? quantity}) {
    return CartItem(
      item: item ?? this.item,
      quantity: quantity ?? this.quantity,
    );
  }
}
