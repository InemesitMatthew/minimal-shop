import 'package:flutter/material.dart';
import '../models/product.dart';

class Shop extends ChangeNotifier {
  // List of products available for sale in the shop.
  final List<Product> _shop = [
    // Product 1
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item description...", // Description of the product.
      imagePath: 'assets/glasses.jpg', // Image path for the product.
    ),
    // Product 2
    Product(
      name: "Product 2",
      price: 99.99,
      description: "Item description...", // Description of the product.
      imagePath: 'assets/hoodie.jfif', // Image path for the product.
    ),
    // Product 3
    Product(
      name: "Product 3",
      price: 99.99,
      description: "Item description...", // Description of the product.
      imagePath: 'assets/shoes.jfif', // Image path for the product.
    ),
    // Product 4
    Product(
      name: "Product 4",
      price: 99.99,
      description: "Item description...", // Description of the product.
      imagePath: 'assets/watch.jfif', // Image path for the product.
    ),
  ];

  // List to hold products that the user adds to their cart.
  // ignore: prefer_final_fields
  List<Product> _cart = [];

  // Getter to return the list of available products in the shop.
  List<Product> get shop => _shop;

  // Getter to return the list of items in the user's cart.
  List<Product> get cart => _cart;

  // Method to add a product to the user's cart.
  void addToCart(Product item) {
    _cart.add(item); // Add the product to the cart.
    notifyListeners(); // Notify listeners (widgets) that the cart has been updated.
  }

  // Method to remove a product from the user's cart.
  void removeFromCart(Product item) {
    _cart.remove(item); // Remove the product from the cart.
    notifyListeners(); // Notify listeners (widgets) that the cart has been updated.
  }
}
