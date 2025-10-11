import 'package:flutter/material.dart';

import 'package:my_new_app/data/models/item.dart';

class FavoritesViewModel extends ChangeNotifier {
  final Map<String, Item> _favourites = {};

  List<Item> get favItems => _favourites.values.toList(growable: false);

  int get favItemCount => _favourites.length;

  bool isFavourite(String id) => _favourites.containsKey(id);

  void toggleItem(Item item) {
    if (isFavourite(item.id)) {
      _favourites.remove(item.id);
    } else {
      _favourites[item.id] = item;
    }
    notifyListeners();
  }

  void removeItem(String id) {
    if (_favourites.remove(id) != null) {
      notifyListeners();
    }
  }

  void clear() {
    if (_favourites.isEmpty) {
      return;
    }
    _favourites.clear();
    notifyListeners();
  }
}
