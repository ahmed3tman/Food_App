// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:my_new_app/pages/fav_page.dart';
import 'package:provider/provider.dart';

import 'package:my_new_app/tempelets/temp.dart';
import 'package:my_new_app/provider/my_provider.dart';

import '../provider/my_sec_provider.dart';
import 'car_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> orders = [
    {
      'image': 'images/purger.png',
      'nametext': 'Burger',
      'priceText': '200',
      'smallname': 'burger',
    },
    {
      'image': 'images/pizza.png',
      'nametext': 'Pizza',
      'priceText': '250',
      'smallname': 'pizza',
    },
    {
      'image': 'images/cheese.png',
      'nametext': 'Cheese',
      'priceText': '150',
      'smallname': 'cheese',
    },
    {
      'image': 'images/purger.png',
      'nametext': 'Burger',
      'priceText': '200',
      'smallname': 'burger',
    },
    {
      'image': 'images/pizza.png',
      'nametext': 'Pizza',
      'priceText': '250',
      'smallname': 'pizza',
    },
    {
      'image': 'images/cheese.png',
      'nametext': 'Cheese',
      'priceText': '150',
      'smallname': 'cheese',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(197, 255, 255, 255),
      body: ListView(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.white,
                            image: const DecorationImage(
                                image: AssetImage(
                                  "images/0.JPG",
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 20, top: 10),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.notifications_none))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, left: 20),
                        width: 142,
                        child: const Text(
                          "Choose             Your Favorite",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Text("Food",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 192, 22, 10),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700))),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey.shade500)),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 10, right: 20),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 192, 22, 10),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.line_weight_outlined,
                            color: Colors.white,
                          ))),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Your Choice",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: orders.length,
                      itemBuilder: (context, index) {
                        return OrderCard(
                          image: orders[index]['image']!,
                          nametext: orders[index]['nametext']!,
                          priceText: orders[index]['priceText']!,
                          smallname: orders[index]['smallname']!,
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Extras",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: orders.length,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return OrderCard(
                          image: orders[index]['image']!,
                          nametext: orders[index]['nametext']!,
                          priceText: orders[index]['priceText']!,
                          smallname: orders[index]['smallname']!,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const FloatingBottomBar(),
    );
  }
}

class FloatingBottomBar extends StatefulWidget {
  const FloatingBottomBar({super.key});

  @override
  _FloatingBottomBarState createState() => _FloatingBottomBarState();
}

class _FloatingBottomBarState extends State<FloatingBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: SizedBox(
        height: 50, // تقليل ارتفاع البار
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              iconSize: 35, // تكبير الأيقونات
              icon: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    "first", (Route<dynamic> route) => false);
              },
            ),
            IconButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CarPage(),
                  ));
            }, icon: Consumer<MyProvider>(
              builder: (context, myProvider, child) {
                return Stack(
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 35,
                      color: Colors.red,
                    ),
                    if (myProvider.cartItemCount > 0)
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 18,
                            minHeight: 18,
                          ),
                          child: Text(
                            '${myProvider.cartItemCount}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                );
              },
            )),
            IconButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavPage(),
                  ));
            }, icon: Consumer<MySecProvider>(
              builder: (context, MySecProvider, child) {
                return Stack(
                  children: [
                    const Icon(
                      Icons.favorite_border,
                      size: 34,
                      color: Colors.red,
                    ),
                    if (MySecProvider.favItemCount > 0)
                      Positioned(
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 18,
                            minHeight: 18,
                          ),
                          child: Text(
                            '${MySecProvider.favItemCount}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                );
              },
            )),
            IconButton(
              iconSize: 35, // تكبير الأيقونات
              icon: const Icon(
                Icons.person_outline,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("profile");
              },
            ),
          ],
        ),
      ),
    );
  }
}
