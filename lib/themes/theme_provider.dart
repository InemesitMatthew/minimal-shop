import 'package:flutter/material.dart';
import 'light_mode.dart'; // Import the light theme.
import 'dark_mode.dart'; // Import the dark theme.

// ThemeProvider class manages the current theme and provides a way
// to toggle between light and dark modes.
class ThemeProvider with ChangeNotifier {
  // Private field to hold the current theme data.
  ThemeData _themeData;

  // Constructor to initialize the theme provider with an initial theme (light or dark).
  ThemeProvider(this._themeData);

  // Getter to access the current theme data outside the class.
  ThemeData get themeData => _themeData;

  // Method to toggle between light and dark themes.
  void toggleTheme() {
    // Check if the current theme is light mode, and if so, switch to dark mode.
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      // If the current theme is dark mode, switch to light mode.
      _themeData = lightMode;
    }
    // Notify all listeners (widgets) that the theme has changed, triggering a rebuild.
    notifyListeners();
  }
}
