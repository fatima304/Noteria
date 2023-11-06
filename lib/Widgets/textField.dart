import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(Colors.white),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(Colors.teal),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: Color ?? Colors.white,
        ));
  }
}
