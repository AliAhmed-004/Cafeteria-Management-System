import 'package:cafeteria_management_system/widgets/menu_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 154),
      appBar: AppBar(
        title: const Text("Cafeteria Management System"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 250, 201, 56),
      ),
      body: MenuItems(),
    );
  }
}
