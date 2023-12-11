import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'My Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Your daily notes that reminds you 😊',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
