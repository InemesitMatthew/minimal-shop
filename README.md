# **Minimal Shop - E-commerce App**

**Minimal Shop** is a simple, minimalistic e-commerce mobile application built with Flutter. The app offers a clean and intuitive shopping experience, complete with a theme toggle (light/dark mode), a shopping cart, and an easy-to-navigate user interface.

## **Table of Contents**
- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## **Overview**
Minimal Shop is a Flutter-based e-commerce application showcasing best practices in Flutter app development. It incorporates state management using the `provider` package and offers customizable themes. The app allows users to:
- View a list of products.
- Add products to a cart.
- View the cart and remove items.
- Toggle between light and dark themes.
- Navigate between different pages of the app seamlessly.

## **Features**
- **Product Listing**: Display a horizontal scrollable list of products with images, descriptions, and prices.
- **Add to Cart**: Users can add items to their cart after confirmation through a dialog.
- **Shopping Cart**: View cart items with the ability to remove individual items.
- **Theme Toggle**: Easily switch between light and dark themes.
- **Custom Widgets**: Reusable custom widgets such as `MyButton`, `MyDrawer`, and `MyProductTile`.
- **Smooth Navigation**: Navigate between the intro page, shop page, and cart page effortlessly using named routes.

## **Installation**

To set up the project locally, follow these steps:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/InemesitMatthew/minimal-shop.git
    cd minimal-shop
    ```

2. **Install dependencies:**

    Run the following command in the root directory to install the necessary Flutter packages.

    ```bash
    flutter pub get
    ```

3. **Run the app:**

    To run the app on a connected device or simulator, use the following command:

    ```bash
    flutter run
    ```

## **Project Structure**
The project is organized as follows:

```
lib/
│
├── components/
│   ├── my_button.dart              // Custom reusable button widget
│   ├── my_drawer.dart              // Custom navigation drawer widget
│   ├── my_list_tile.dart           // Custom list tile widget used in the drawer
│   ├── my_product_tile.dart        // Widget to display product details on the shop page
│   └── theme_toggle_button.dart    // Theme toggle button to switch between light/dark modes
│
├── models/
│   ├── product.dart                // Product model representing an individual product
│   └── shop.dart                   // Shop model handling the list of products and the shopping cart
│
├── pages/
│   ├── cart_page.dart              // Page displaying the user's cart
│   ├── intro_page.dart             // Intro page of the app
│   └── shop_page.dart              // Main page showing available products
│
├── themes/
│   ├── dark_mode.dart              // Dark mode theme configuration
│   ├── light_mode.dart             // Light mode theme configuration
│   └── theme_provider.dart         // ThemeProvider for managing theme switching
│
└── main.dart                       // Entry point of the Flutter application
```

### **Key Files**:
1. **`main.dart`**: Initializes the app with `MultiProvider` for `Shop` and `ThemeProvider`. Defines routes for navigation between different pages.
2. **`shop.dart`**: The `Shop` model contains the product list and handles the shopping cart logic, including adding/removing items from the cart.
3. **`theme_provider.dart`**: Manages theme switching between light and dark modes and notifies widgets when a change occurs.

## **Usage**

### **Navigation**:
- **Intro Page**: The app starts with the `IntroPage`, which includes a button to navigate to the `ShopPage`.
- **Shop Page**: Displays a list of products that the user can browse and add to their cart. The page includes a custom drawer for easy navigation.
- **Cart Page**: Displays the products added to the cart and allows users to remove items.

### **Theming**:
- Users can toggle between light and dark modes by tapping the theme toggle button in the app bar on the `ShopPage`.

### **Cart**:
- Products can be added to the cart from the shop page. Items in the cart are displayed on the `CartPage`, where users can remove them or proceed to "pay" (currently a placeholder for backend integration).

### **Key Widgets**:
- **`MyProductTile`**: Displays product information, including an image, name, description, price, and an add-to-cart button.
- **`ThemeToggleButton`**: Allows switching between light and dark themes.
- **`MyDrawer`**: Custom drawer with navigation options (Shop, Cart, and Exit).
- **`MyButton`**: A custom button widget used across the app.

## **Dependencies**
- **Flutter SDK**: [https://flutter.dev](https://flutter.dev)
- **Provider**: State management solution
  ```yaml
  provider: ^6.0.0
  ```

Install these dependencies by running `flutter pub get`.

## **Contributing**
If you'd like to contribute to this project:
1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Submit a pull request describing your changes.

Contributions are always welcome!

## **License**
This project is licensed under the MIT License. See the `LICENSE` file for more details.

