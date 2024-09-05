import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shop.dart';
import '../models/product.dart';
import '../components/my_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // Method to remove an item from the cart with user confirmation.
  void removeItemFromCart(BuildContext context, Product product) {
    // Show a dialog box to ask the user to confirm the removal from the cart.
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Remove this item from your cart"),
        actions: [
          // Cancel button to dismiss the dialog without any action.
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),

          // Yes button to confirm the removal of the item from the cart.
          MaterialButton(
            onPressed: () {
              // Close the dialog box.
              Navigator.pop(context);

              // Remove the item from the cart.
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    );
  }

  // Method triggered when the user presses the pay button.
  void payButtonPressed(BuildContext context) {
    // Show a dialog indicating that the user wants to pay.
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content:
            Text("User wants to pay! Connect this app to your payment backend"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Access the list of items in the cart from the Shop model.
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent background for the AppBar.
        elevation: 0, // Remove shadow.
        foregroundColor: Theme.of(context).colorScheme.inversePrimary, // Icon and text color based on theme.
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface, // Background color based on theme.
      body: Column(
        children: [
          // Display the list of items in the cart.
          Expanded(
            child: cart.isEmpty
                ? const Center(
                    child: Text("Your cart is empty..."),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      // Get individual item in cart.
                      final item = cart[index];

                      // Return a ListTile to represent each item in the cart.
                      return ListTile(
                        title: Text(item.name), // Display the item name.
                        subtitle: Text(
                          item.price.toStringAsFixed(2), // Display the item price.
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.remove,
                          ),
                          onPressed: () => removeItemFromCart(context, item), // Trigger removal of item from cart.
                        ),
                      );
                    },
                  ),
          ),

          // Pay button at the bottom of the screen.
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
              onTap: () => payButtonPressed(context), // Trigger the pay action.
              child: const Text("PAY NOW"),
            ),
          ),
        ],
      ),
    );
  }
}
