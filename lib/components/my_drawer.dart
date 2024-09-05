import 'package:flutter/material.dart';
import 'package:learning_ecommerce_app_with_cart/components/my_list_tile.dart'; // Import the custom list tile widget.

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface, // Set the background color based on the theme.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space items equally within the drawer.
        children: [
          Column(
            children: [
              // Custom theme to remove the divider under the DrawerHeader.
              Theme(
                data: Theme.of(context).copyWith(
                  dividerTheme: const DividerThemeData(
                    color: Colors.transparent, // Remove the divider line.
                  ),
                ),
                child: DrawerHeader(
                  child: Center(
                    child: Icon(
                      Icons.shopping_bag_rounded, // Shopping bag icon for the drawer header.
                      size: 75,
                      color: Theme.of(context).colorScheme.inversePrimary, // Color based on the theme.
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Shop list tile: Navigates back to the shop page.
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context), // Closes the drawer when tapped.
              ),

              // Cart list tile: Navigates to the cart page.
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context); // Closes the drawer.
                  Navigator.pushNamed(context, '/cart_page'); // Go to cart page.
                },
              ),
            ],
          ),

          // Exit list tile: Navigates back to the intro page and clears the navigation stack.
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Exit",
              icon: Icons.logout_rounded,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context,
                '/intro_page',
                (route) => false, // Removes all previous routes and navigates to intro page.
              ),
            ),
          ),
        ],
      ),
    );
  }
}
