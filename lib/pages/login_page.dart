import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 192, 22, 10),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 350,
                    width: 350,
                    margin: const EdgeInsets.only(top: 105),
                    child: PageView(
                      onPageChanged: (value) {},
                      children: [
                        Image.asset("images/purger.png"),
                        Image.asset("images/pizza.png"),
                        Image.asset("images/cheese.png"),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 385,
                  left: (MediaQuery.of(context).size.width - 230) / 2,
                  child: Container(
                    width: 230,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(200)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 5,
                          blurRadius: 20,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: const Color.fromARGB(255, 192, 22, 10),
                    cursorHeight: 20,
                    cursorWidth: 3,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60),
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Email",
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 192, 22, 10),
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 192, 22, 10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    cursorColor: const Color.fromARGB(255, 192, 22, 10),
                    cursorHeight: 20,
                    cursorWidth: 3,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(131, 179, 76, 60),
                          width: 2,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 192, 22, 10),
                      ),
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Color.fromARGB(255, 192, 22, 10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "If you don't have an account, please sign up",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 192, 22, 10),
                    ),
                  ),
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200),
                        ),
                        color: const Color.fromARGB(255, 192, 22, 10),
                        height: 60,
                        minWidth: 150,
                        hoverColor: const Color.fromARGB(255, 106, 9, 3),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              "home", (Route<dynamic> route) => false);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200),
                        ),
                        color: const Color.fromARGB(255, 192, 22, 10),
                        height: 60,
                        minWidth: 150,
                        hoverColor: const Color.fromARGB(255, 106, 9, 3),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
