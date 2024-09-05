import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String text; // Text to display in the ListTile.
  final IconData icon; // Icon to display next to the text.
  final void Function()? onTap; // Optional onTap handler.

  const MyListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey, // Set the icon color to grey.
      ),
      title: Text(text), // Display the provided text.
      onTap: onTap, // Set the onTap action for the ListTile.
    );
  }
}
