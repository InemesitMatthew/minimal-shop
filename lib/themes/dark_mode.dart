import 'package:flutter/material.dart';

// Defines the dark theme for the app.
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade800, // The surface color for widgets such as cards.
    primary: Colors.grey.shade900, // The primary color, used for primary widgets like buttons.
    secondary: Colors.black, // The secondary color, typically used for accenting elements.
    inversePrimary: Colors.grey.shade300, // The inverse of the primary color, used for contrast.
  ),
);
