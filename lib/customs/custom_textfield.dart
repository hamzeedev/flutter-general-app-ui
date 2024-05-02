import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {


  final        controller;
  final String hintText;
  final bool   obscureText; // For hiding password eg (*****)


  const CustomTextField({
    super.key,
    required this.controller,
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
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey.shade400),
          ),
          fillColor: Colors.blueGrey.shade100,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.blueGrey[500]),
        ),
      ),
    );
  }
}