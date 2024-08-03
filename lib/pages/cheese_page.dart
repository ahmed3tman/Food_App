import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_page.dart';

class CheesePage extends StatelessWidget {
  const CheesePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //========================================================================
        body: Container(
      color: const Color.fromARGB(255, 238, 238, 238),
      child: Column(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 192, 22, 10),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.only(top: 30, left: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage(
                                    title: 'MyHomePage',
                                  )),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 13,
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  margin: const EdgeInsets.only(top: 30, right: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 370, left: 0),
                  width: 230,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(200)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: 350,
                  margin: const EdgeInsets.only(top: 130, left: 0),
                  child: Image.asset("images/cheese.png"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(top: 420),
                  child: const ListTile(
                    title: Text(
                      "Cheese Sandwich",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(
                      "Sandwich",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )),
                Container(
                  margin: const EdgeInsets.only(top: 400, right: 20),
                  child: const Text(
                    "130.0  LE",
                    style: TextStyle(
                        color: Color.fromARGB(255, 192, 22, 10),
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 510, left: 25),
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        color: Colors.white,
                        height: 45,
                        minWidth: 110,
                        hoverColor: const Color.fromARGB(255, 192, 22, 10),
                        child: const Text(
                          "Details",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200)),
                        color: Colors.white,
                        height: 45,
                        minWidth: 110,
                        hoverColor: const Color.fromARGB(255, 192, 22, 10),
                        child: const Text(
                          "Reviews",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 560, right: 60),
              child: const Text(
                "A cheese toast sandwich is a simple yet satisfying treat, featuring melted cheese nestled between two slices of crispy toast, offering a warm and comforting snack in every bite..",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 105, top: 611),
                  child: const Text(
                    "See more.",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 192, 22, 10),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 660, left: 20),
                  height: 68,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 192, 22, 10),
                            borderRadius:
                                BorderRadius.all(Radius.circular(200))),
                        child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(200)),
                            color: const Color.fromARGB(255, 192, 22, 10),
                            hoverColor: const Color.fromARGB(255, 106, 9, 3),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        ("1"),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 192, 22, 10),
                            borderRadius:
                                BorderRadius.all(Radius.circular(200))),
                        child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(200)),
                            color: const Color.fromARGB(255, 192, 22, 10),
                            hoverColor: const Color.fromARGB(255, 106, 9, 3),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 660, right: 20),
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                    color: const Color.fromARGB(255, 192, 22, 10),
                    height: 75,
                    minWidth: 180,
                    hoverColor: const Color.fromARGB(255, 106, 9, 3),
                    child: const Text(
                      "Add to car",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    ));
  }
}
