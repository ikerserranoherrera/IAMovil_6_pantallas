import 'package:flutter/material.dart';
import 'widgets/home_page.dart';
import 'widgets/burgers_page.dart';
import 'widgets/login_page.dart';
import 'widgets/profile_page.dart';
import 'widgets/drinks_page.dart';
import 'widgets/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carl's Jr Isaac",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/categorias': (context) => const BurgersPage(),
        '/bebidas': (context) => const DrinksPage(),
        '/login': (context) => const LoginPage(),
        '/perfil': (context) => const ProfilePage(),
        '/carrito': (context) => const CartPage(),
      },
    );
  }
}
