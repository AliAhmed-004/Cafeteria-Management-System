import 'package:cafeteria_management_system/pages/home_page.dart';
import 'package:cafeteria_management_system/services/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 250, 201, 56),
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      title: "Cafeteria Management System",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        // '/': (context) => LoginPage(),
        '/home': (context) => const HomePage()
      },
    );
  }
}
