import 'package:flutter/material.dart';
import '/components/my_product_tile.dart'; // Import for the custom product tile widget.
import 'package:provider/provider.dart';
import '/components/my_drawer.dart'; // Import for the custom drawer widget.
import '/models/shop.dart'; // Import the Shop model to access products.
import '/components/theme_toggle_button.dart'; // Import the reusable theme toggle button.

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the list of products from the Shop model using context.watch.
    // This listens for changes in the Shop model and rebuilds the widget when the product list changes.
    final products = context.watch<Shop>().shop;

    return Scaffold(
      // The Scaffold provides the basic visual structure of the page including an AppBar, Drawer, and a Body.
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Makes the AppBar background transparent.
        elevation: 0, // Removes the AppBar shadow.
        foregroundColor: Theme.of(context)
            .colorScheme
            .inversePrimary, // Sets the color of the AppBar icons and text based on the current theme.
        title: const Text("Shop Page"), // Title of the Shop Page.
        actions: [
          // Button to navigate to the cart page.
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          const ThemeToggleButton(), // Adds the theme toggle button to the AppBar.
        ],
      ),
      drawer: const MyDrawer(), // Adds the custom drawer to the page.
      backgroundColor: Theme.of(context)
          .colorScheme
          .surface, // Sets the page background color based on the current theme.
      body: ListView(
        children: [
          const SizedBox(height: 25), // Adds space at the top of the page.

          // Shop subtitle, providing a brief description of the page content.
          Center(
            child: Text(
              "Pick from a selected list of premium products", // Description text.
              style: TextStyle(
                color: Theme.of(context)
                    .colorScheme
                    .inversePrimary, // Text color based on the current theme.
              ),
            ),
          ),

          // Horizontal list of products.
          SizedBox(
            height: 550, // Sets the height for the product list.
            child: ListView.builder(
              itemCount: products.length, // The number of products to display.
              scrollDirection: Axis.horizontal, // Scrolls horizontally.
              padding: const EdgeInsets.all(15), // Padding around the list.
              itemBuilder: (context, index) {
                // Get each individual product from the shop list.
                final product = products[index];

                // Returns a product tile UI, customized by the MyProductTile widget.
                return MyProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
