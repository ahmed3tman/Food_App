import 'package:flutter/material.dart';
import 'package:my_new_app/pages/first_page.dart';
import 'package:my_new_app/pages/second_pade.dart';
import 'package:my_new_app/tempelets/temp.dart';

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
      //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
                    height: 55,
                    width: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: TextFormField(
                      cursorHeight: 20,
                      cursorWidth: 3,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(131, 255, 255, 255),
                                width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(131, 255, 255, 255),
                                width: 2)),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: ("Search"),
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(128, 192, 22, 10)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 192, 22, 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 20),
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 192, 22, 10),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                        highlightColor: const Color.fromARGB(68, 255, 255, 255),
                        hoverColor: const Color.fromARGB(255, 161, 13, 2),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tune,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        color: Colors.white,
                        height: 50,
                        minWidth: 100,
                        hoverColor: const Color.fromARGB(255, 192, 22, 10),
                        child: const Text(
                          "All",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        color: Colors.white,
                        height: 50,
                        minWidth: 100,
                        hoverColor: const Color.fromARGB(255, 192, 22, 10),
                        child: const Text(
                          " Pizza ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        color: Colors.white,
                        height: 50,
                        minWidth: 100,
                        hoverColor: const Color.fromARGB(255, 192, 22, 10),
                        child: const Text(
                          "Burger",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        color: Colors.white,
                        height: 50,
                        minWidth: 100,
                        hoverColor: const Color.fromARGB(255, 192, 22, 10),
                        child: const Text(
                          "Salad",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        color: Colors.white,
                        height: 50,
                        minWidth: 100,
                        hoverColor: const Color.fromARGB(255, 192, 22, 10),
                        child: const Text(
                          "Cheese",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      "Popular Food",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 10),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All ",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color.fromARGB(255, 192, 22, 10),
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 5),
                child: ListView.builder(
                  itemCount: orders.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final order = orders[index];
                    return OrderCard(
                      image: order['image']!,
                      nametext: order['nametext']!,
                      priceText: order['priceText']!,
                      smallname: order['smallname']!,
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: const Text(
                      "Nearest",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 10),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See All ",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Color.fromARGB(255, 192, 22, 10),
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 5),
                child: ListView.builder(
                  itemCount: orders.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    final order = orders[index];
                    return OrderCard(
                      image: order['image']!,
                      nametext: order['nametext']!,
                      priceText: order['priceText']!,
                      smallname: order['smallname']!,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "@a7med_3tmvn",
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),

// bottomNavigationBar ==================================

      bottomNavigationBar: SizedBox(
        height: 100, // قم بتعديل الارتفاع حسب احتياجك
        child: BottomAppBar(
          color: const Color.fromARGB(255, 192, 22, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstPage()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_outline,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Add your action here
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed("car");
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.person_outline,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
