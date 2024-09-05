import 'package:flutter/material.dart';

// Defines the light theme for the app.
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade400, // The surface color for widgets such as cards.
    primary: Colors.grey.shade300, // The primary color, used for primary widgets like buttons.
    secondary: Colors.white, // The secondary color, typically used for accenting elements.
    inversePrimary: Colors.grey.shade900, // The inverse of the primary color, used for contrast.
  ),
);
