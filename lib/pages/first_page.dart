import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

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
                Container(),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  margin: const EdgeInsets.only(top: 30, right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 385, left: 0),
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
                  margin: const EdgeInsets.only(top: 105, left: 0),
                  child: PageView(
                    onPageChanged: (value) {},
                    children: [
                      Image.asset("images/purger.png"),
                      Image.asset("images/pizza.png"),
                      Image.asset("images/cheese.png"),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 440, left: 40, right: 40),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                initialValue: "Ahmed3tman@icloud.com",
                cursorColor: const Color.fromARGB(255, 192, 22, 10),
                cursorHeight: 20,
                cursorWidth: 3,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60), width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60), width: 2)),
                  filled: true,
                  fillColor: Colors.white,

                  labelText: (" Enter Your Email "),
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 192, 22, 10)),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 192, 22, 10),
                  ),
                  //hintText: ("Enter Your Name"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 510, left: 40, right: 40),
              child: TextFormField(
                obscureText: true,
                cursorColor: const Color.fromARGB(255, 192, 22, 10),
                cursorHeight: 20,
                cursorWidth: 3,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60), width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60), width: 2)),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: (" Enter Your Password "),
                  labelStyle:
                      const TextStyle(color: Color.fromARGB(255, 192, 22, 10)),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Color.fromARGB(255, 192, 22, 10),
                  ),
                  //hintText: ("Enter Your Name"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 611),
                  child: const Text(
                    "See more..",
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
                  margin: const EdgeInsets.only(top: 660, left: 20, right: 0),
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                    color: const Color.fromARGB(255, 192, 22, 10),
                    height: 60,
                    minWidth: 150,
                    hoverColor: const Color.fromARGB(255, 106, 9, 3),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 660, right: 20, left: 0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage(
                                  title: "",
                                )),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                    color: const Color.fromARGB(255, 192, 22, 10),
                    height: 60,
                    minWidth: 150,
                    hoverColor: const Color.fromARGB(255, 106, 9, 3),
                    child: const Text(
                      "Sign In",
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
