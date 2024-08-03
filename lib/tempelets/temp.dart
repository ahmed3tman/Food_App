import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
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
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
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
            margin: const EdgeInsets.only(top: 3, left: 83),
            child: IconButton(
                onPressed: () {},
                highlightColor: Colors.white,
                hoverColor: const Color.fromARGB(255, 255, 255, 255),
                icon: const Icon(
                  Icons.favorite_border,
                  color: Color.fromARGB(255, 192, 22, 10),
                )),
          ),
          Container(
            height: 110,
            width: 110,
            margin: const EdgeInsets.only(top: 20, left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.image)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 110),
            child: ListTile(
              title: Text(
                widget.nametext,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
              ),
              subtitle: Text(
                widget.smallname,
                style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 170),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.priceText} LE",
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 159, left: 85),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_box,
                  size: 20,
                  color: Color.fromARGB(255, 192, 22, 10),
                )),
          ),
        ],
      ),
    );
  }
}
