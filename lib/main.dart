import 'package:flutter/material.dart';
import 'package:my_new_app/pages/car_page.dart';
import 'package:my_new_app/pages/login_page.dart';
import 'package:my_new_app/pages/profile_pade.dart';
import 'package:my_new_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'provider/my_sec_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyProvider()),
        ChangeNotifierProvider(create: (_) => MySecProvider()),
      ],
      child: MaterialApp(
        routes: {
          "car": (context) => const CarPage(),
          "profile": (context) => const ProfilePage(),
          "first": (context) => const LoginPage(),
          "home": (context) => const MyHomePage(title: 'MyHomePage'),
        },
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
      ),
    );
  }
}
