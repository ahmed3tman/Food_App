import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_new_app/data/models/cart_item.dart';
import 'package:my_new_app/presentation/viewmodels/cart_view_model.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartViewModel = Provider.of<CartViewModel>(context);
    final List<CartItem> items = cartViewModel.cartItems;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shopping Car",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.red[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Price:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${cartViewModel.totalPrice.toStringAsFixed(2)} LE",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final CartItem entry = items[index];
                final imagePath = entry.item.imagePath;
                final price = entry.item.price;
                final total = entry.lineTotal;
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        imagePath,
                        width: 80, // زيادة حجم الصورة
                        height: 80, // زيادة حجم الصورة
                        fit: BoxFit.fill, // تغيير عرض الصورة لتكون كاملة
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${total.toStringAsFixed(2)} LE",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                            height: 4.0), // مسافة بين السعر واسم المنتج
                        Text(
                          entry.item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Unit: ${price.toStringAsFixed(2)} LE • Qty: ${entry.quantity}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            cartViewModel.decrementItem(entry.item.id);
                          },
                          icon: const Icon(Icons.remove_circle_outline),
                          color: Colors.red,
                        ),
                        IconButton(
                          onPressed: () {
                            cartViewModel.addItem(entry.item);
                          },
                          icon: const Icon(Icons.add_circle_outline),
                          color: Colors.red,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            cartViewModel.removeItem(entry.item.id);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
