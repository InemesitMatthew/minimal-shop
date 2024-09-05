import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../themes/theme_provider.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the ThemeProvider to get the current theme and toggle function.
    final themeProvider = Provider.of<ThemeProvider>(context);

    // Determine the icon to display based on the current theme.
    IconData icon = themeProvider.themeData.brightness == Brightness.light
        ? Icons.dark_mode // Show moon icon if light mode is active (indicating dark mode toggle).
        : Icons.light_mode; // Show sun icon if dark mode is active (indicating light mode toggle).

    return IconButton(
      icon: Icon(icon), // Display the determined icon.
      onPressed: () {
        // Call the toggleTheme method to switch between light and dark themes.
        themeProvider.toggleTheme();
      },
    );
  }
}
