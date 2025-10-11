import 'package:flutter/foundation.dart';

/// Immutable representation of a menu item that can be reused by cart/favorites logic.
@immutable
class Item {
  const Item({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.price,
    this.category = '',
  });

  /// Unique identifier used to de-duplicate the item (maps to the legacy `smallname`).
  final String id;

  /// Local asset path for the product image.
  final String imagePath;

  /// Display name for the product.
  final String name;

  /// Optional grouping/category label (allows "Sandwich", etc.).
  final String category;

  /// Unit price for the product.
  final double price;

  factory Item.fromMap(Map<String, dynamic> data) {
    return Item(
      id: data['smallname'] as String,
      imagePath: data['image'] as String,
      name: data['nametext'] as String,
      category: data['category'] as String? ?? '',
      price: double.tryParse('${data['priceText']}') ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'smallname': id,
      'image': imagePath,
      'nametext': name,
      'category': category,
      'priceText': price.toStringAsFixed(2),
    };
  }

  Item copyWith({
    String? id,
    String? imagePath,
    String? name,
    String? category,
    double? price,
  }) {
    return Item(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
    );
  }
}
