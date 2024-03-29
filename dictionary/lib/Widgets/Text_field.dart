import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    @required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  fillColor: Color.fromARGB(255, 110, 108, 108),
                  filled: true,
                  contentPadding: const EdgeInsets.all(10.0),
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
    );
  }

  }
 