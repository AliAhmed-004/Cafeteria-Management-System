import 'package:flutter/material.dart';

class CartItem {
  final String title;
  final String imagePath;
  final int price;

  CartItem(this.title, this.imagePath, this.price);
}

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(CartItem item) {
    _items.remove(item);
    notifyListeners();
  }

  int get totalPrice => _items.fold(0, (sum, item) => sum + item.price);
}