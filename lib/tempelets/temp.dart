import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/my_sec_provider.dart';
import '../provider/my_provider.dart';

class OrderCard extends StatelessWidget {
  final String image;
  final String nametext;
  final String priceText;
  final String smallname;

  const OrderCard({
    super.key,
    required this.image,
    required this.nametext,
    required this.priceText,
    required this.smallname,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MySecProvider>(
      builder: (context, mySecProvider, child) {
        final isFav = mySecProvider.favItems
            .any((item) => item['smallname'] == smallname);

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 130,
          margin: const EdgeInsets.only(left: 20),
          child: Stack(
            children: [
              // صورة المنتج
              Container(
                height: 110,
                width: 110,
                margin: const EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image)),
                ),
              ),

              // اسم المنتج وتفاصيله
              Positioned(
                top: 110,
                left: 0,
                child: SizedBox(
                  width: 110,
                  child: ListTile(
                    title: Text(
                      nametext,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      smallname,
                      style: const TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),

              // سعر المنتج
              Positioned(
                bottom: 12,
                left: 15,
                child: Text(
                  "$priceText LE",
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w800),
                ),
              ),

              // أيقونة المفضلة
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    mySecProvider.toggleItemInFav({
                      'image': image,
                      'nametext': nametext,
                      'priceText': priceText,
                      'smallname': smallname,
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color: isFav ? Colors.red : Colors.grey,
                      size: 25,
                    ),
                  ),
                ),
              ),

              // أيقونة الإضافة إلى السلة
              Positioned(
                bottom: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    Provider.of<MyProvider>(context, listen: false)
                        .addItemToCar({
                      'image': image,
                      'nametext': nametext,
                      'priceText': priceText,
                      'smallname': smallname,
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: const Icon(
                      Icons.add_box,
                      size: 22,
                      color: Colors.red,
                    ),
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
