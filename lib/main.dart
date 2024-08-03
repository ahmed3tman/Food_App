import 'package:flutter/material.dart';
import 'package:my_new_app/pages/car_page.dart';
import 'package:my_new_app/pages/first_page.dart';
import 'package:my_new_app/pro/my_provider.dart';
import 'package:provider/provider.dart';

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
      ],
      child: MaterialApp(
        routes: {
          "car": (context) => const CarPage(),
        },
        debugShowCheckedModeBanner: false,
        home: const FirstPage(),
      ),
    );
  }
}
