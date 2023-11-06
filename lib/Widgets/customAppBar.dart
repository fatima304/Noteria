import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'My Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const Text(
          'Your daily notes that reminds you',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            label: const Text('search'),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: 'Enter a city',
          ),
        ),
      ],
    );
  }
}
