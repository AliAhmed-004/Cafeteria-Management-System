import 'package:cafeteria_management_system/pages/home_page.dart';
import 'package:cafeteria_management_system/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cafeteria Management System",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        // '/': (context) => LoginPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}
