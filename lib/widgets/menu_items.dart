import 'package:cafeteria_management_system/services/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String imagePath;
  final int price;

  MenuItem(this.title, this.imagePath, this.price);
}

class MenuItems extends StatelessWidget {
  MenuItems({super.key});

  final List<MenuItem> breakfastItems = [
    MenuItem('Tea', 'tea.jpeg', 50),
    MenuItem('Paratha', 'paratha.jpeg', 40),
    MenuItem('Anda', 'half_fried_egg.jpeg', 60),
  ];

  final List<MenuItem> lunchItems = [
    MenuItem('Chicken Curry', 'chicken_curry.jpeg', 150),
    MenuItem('Rice', 'rice.jpeg', 130),
    MenuItem('Salad', 'salad.jpeg', 50),
  ];

  final List<MenuItem> snackItems = [
    MenuItem('Samosa', 'samosa.jpeg', 40),
    MenuItem('Pakora', 'pakora.jpeg', 100),
    MenuItem('Tea', 'tea.jpeg', 50),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMenuSection('Breakfast', breakfastItems, context),
            const SizedBox(height: 16),
            _buildMenuSection('Lunch', lunchItems, context),
            const SizedBox(height: 16),
            _buildMenuSection('Snacks', snackItems, context),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(String title, List<MenuItem> items, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: items.map((item) => ListTile(
            onTap: () {
            Provider.of<CartProvider>(context, listen: false).addItem(
              CartItem(item.title, item.imagePath, item.price),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${item.title} added to cart')),
            );
          },
            leading: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset(
                item.imagePath,
                //TODO: Resize the Images to look more beautiful
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            title: Text("${item.title} - Rs ${item.price}"),
          )).toList(),
        ),
      ],
    );
  }
}