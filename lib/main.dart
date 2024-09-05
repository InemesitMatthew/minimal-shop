import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themes/light_mode.dart';
import 'themes/theme_provider.dart';
import 'pages/intro_page.dart';
import 'models/shop.dart';
import 'pages/cart_page.dart';
import 'pages/shop_page.dart';

void main() {
  // The runApp function initializes the app. We're using MultiProvider here to provide
  // multiple ChangeNotifierProviders (Shop and ThemeProvider) to the widget tree.
  runApp(
    MultiProvider(
      providers: [
        // Shop provider to manage the state of the shopping cart and products.
        ChangeNotifierProvider(create: (context) => Shop()),
        
        // ThemeProvider to manage and provide the current theme (light or dark).
        ChangeNotifierProvider(create: (context) => ThemeProvider(lightMode)),
      ],
      // MyApp is the root widget of the application.
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing the current theme from ThemeProvider.
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disables the debug banner.
      home: const IntroPage(), // Sets the initial page to IntroPage.
      theme: themeProvider.themeData, // Sets the theme of the app based on the provider.
      routes: {
        '/intro_page': (context) => const IntroPage(), // Route for IntroPage.
        '/shop_page': (context) => const ShopPage(), // Route for ShopPage.
        '/cart_page': (context) => const CartPage(), // Route for CartPage.
      },
    );
  }
}
