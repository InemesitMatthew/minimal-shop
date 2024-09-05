class Product {
  final String name;        // The name of the product.
  final double price;       // The price of the product.
  final String description; // A description of the product.
  final String imagePath;   // The path to the product's image.

  // Constructor for the Product class. Fields are required.
  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
  });
}
