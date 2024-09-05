import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap; // Function to execute when the button is tapped.
  final Widget? child; // Child widget to display inside the button.

  const MyButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Handle tap events using the provided onTap function.
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary, // Set the button background color based on the theme.
          borderRadius: BorderRadius.circular(15), // Rounded corners for the button.
        ),
        padding: const EdgeInsets.all(25), // Padding inside the button.
        child: child, // Display the child widget inside the button.
      ),
    );
  }
}
