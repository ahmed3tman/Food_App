import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                        margin: const EdgeInsets.only(top: 350, left: 0),
                        width: 100,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(200)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(1),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 150, left: 0),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          image: const DecorationImage(
                              image: AssetImage("images/0.JPG"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 380, left: 40),
                    child: const Column(
                      children: [
                        ListTile(
                          title: Text("Change Email"),
                          subtitle: Text("Ahmed3tman@icloud.com"),
                        ),
                        ListTile(
                          title: Text("Change Password"),
                          subtitle: Text("************"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 170, top: 520),
                    child: const Text(
                      "See more..",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 192, 22, 10),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 600, left: 180),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Color.fromARGB(255, 192, 22, 10),
                          size: 50,
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        // Text("Setting"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(top: 680, left: 20, right: 0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                "first", (Route<dynamic> route) => false);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200)),
                          color: const Color.fromARGB(255, 192, 22, 10),
                          height: 60,
                          minWidth: 150,
                          hoverColor: const Color.fromARGB(255, 106, 9, 3),
                          child: const Row(
                            children: [
                              Text(
                                "Log Out",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ],
            )));
  }
}
