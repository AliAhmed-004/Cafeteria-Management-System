import 'package:cafeteria_management_system/pages/cart_page.dart';
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
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          ),
        ],
      ),
      body: MenuItems(),
    );
  }
}
