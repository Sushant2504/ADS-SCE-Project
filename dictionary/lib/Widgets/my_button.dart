import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  MyButton({Key? key, required this.onTap}) : super(key: key); // Corrected the constructor syntax

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Added onTap callback to GestureDetector
      child: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
