import 'package:flutter/material.dart';

class CustomSquareTile extends StatelessWidget {

  final String imagePath;

  const CustomSquareTile({

    super.key,
    required this.imagePath,

    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(16),
        color: Colors.blueGrey.shade100,
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}