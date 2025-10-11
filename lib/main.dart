import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:my_new_app/presentation/viewmodels/cart_view_model.dart';
import 'package:my_new_app/presentation/viewmodels/favorites_view_model.dart';
import 'package:my_new_app/presentation/views/car_page.dart';
import 'package:my_new_app/presentation/views/home_page.dart';
import 'package:my_new_app/presentation/views/login_page.dart';
import 'package:my_new_app/presentation/views/profile_page.dart';

// emulator ===

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => const MyApp(), // Wrap your app
//       ),
//     );

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartViewModel()),
        ChangeNotifierProvider(create: (_) => FavoritesViewModel()),
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
