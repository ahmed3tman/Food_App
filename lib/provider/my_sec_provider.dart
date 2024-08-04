import 'package:flutter/material.dart';

class MySecProvider extends ChangeNotifier {
  List<Map<String, dynamic>> favItems = [];

  // التحقق مما إذا كان العنصر موجودًا بالفعل في قائمة المفضلات
  bool _isItemInFav(Map<String, dynamic> item) {
    return favItems.any((favItem) => favItem['smallname'] == item['smallname']);
  }

  void toggleItemInFav(Map<String, dynamic> item) {
    if (_isItemInFav(item)) {
      favItems
          .removeWhere((favItem) => favItem['smallname'] == item['smallname']);
    } else {
      favItems.add(item);
    }
    notifyListeners();
  }

  int get favItemCount {
    return favItems.length;
  }
}
