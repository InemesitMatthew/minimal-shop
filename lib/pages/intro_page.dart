import 'package:flutter/material.dart';
import 'package:learning_ecommerce_app_with_cart/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface, // Set the background color based on the theme.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically.
          children: [
            // Logo icon representing the shop.
            Icon(
              Icons.shopping_bag_rounded,
              size: 75,
              color: Theme.of(context).colorScheme.inversePrimary, // Icon color based on the theme.
            ),

            const SizedBox(
              height: 25,
            ),

            // Title of the app.
            Text(
              "Minimal Shop",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary, // Text color based on the theme.
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // Subtitle describing the quality of products.
            Text(
              "Premium Quality Products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary, // Text color based on the theme.
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // Button to navigate to the Shop Page.
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: const Icon(
                Icons.arrow_forward_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
