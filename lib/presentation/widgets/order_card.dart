import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_new_app/data/models/item.dart';
import 'package:my_new_app/presentation/viewmodels/cart_view_model.dart';
import 'package:my_new_app/presentation/viewmodels/favorites_view_model.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final price = item.price
        .toStringAsFixed(item.price.truncateToDouble() == item.price ? 0 : 2);

    return Selector<FavoritesViewModel, bool>(
      selector: (_, provider) => provider.isFavourite(item.id),
      builder: (context, isFav, child) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 130,
          margin: const EdgeInsets.only(left: 20),
          child: Stack(
            children: [
              Container(
                height: 110,
                width: 110,
                margin: const EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(item.imagePath)),
                ),
              ),
              Positioned(
                top: 110,
                left: 0,
                child: SizedBox(
                  width: 110,
                  child: ListTile(
                    title: Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text(
                      item.category.isEmpty ? item.id : item.category,
                      style: const TextStyle(
                        color: Colors.black38,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                left: 15,
                child: Text(
                  '$price LE',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    context.read<FavoritesViewModel>().toggleItem(item);
                  },
                  child: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    color: isFav ? Colors.red : Colors.grey,
                    size: 25,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    context.read<CartViewModel>().addItem(item);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: theme.colorScheme.primary,
                        content: Text('${item.name} added to cart'),
                        duration: const Duration(milliseconds: 1200),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.add_box,
                    size: 22,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
