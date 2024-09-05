import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../models/shop.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({
    super.key,
    required this.product,
  });

  // Method to show a dialog box asking the user to confirm adding the product to the cart.
  void addToCart(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Add this to your cart"), // Confirmation message.
        actions: [
          // Cancel button to close the dialog without action.
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),

          // Yes button to add the product to the cart.
          MaterialButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog.

              // Add the product to the cart.
              context.read<Shop>().addToCart(product);
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary, // Background color based on the theme.
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10), // Margin around the product tile.
      padding: const EdgeInsets.all(25), // Padding inside the tile.
      width: 300, // Fixed width for the product tile.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product image displayed within an aspect ratio box.
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary, // Background color for image container.
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity, // Make the container take the full width.
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(product.imagePath), // Display the product image.
                ),
              ),

              const SizedBox(height: 25), // Space between the image and text.

              // Product name.
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 10),

              // Product description with color based on the current theme.
              Text(
                product.description,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),

          const SizedBox(height: 25), // Space between the description and price/add to cart section.

          // Row displaying the product price and add to cart button.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Display the product price.
              Text('\$${product.price.toStringAsFixed(2)}'),

              // Add to cart button.
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary, // Background color for the button.
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () => addToCart(context), // Add product to the cart when pressed.
                  icon: const Icon(Icons.add), // Display the add icon.
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
