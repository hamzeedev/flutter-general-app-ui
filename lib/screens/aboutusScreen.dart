import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[300],
        elevation: 0,
        title: Text(
          'A B O U T',
          style: TextStyle(color: Colors.blueGrey[800]),
        ),
      ),
      body: const Center(child: Text('this app was designed for..')),
    );
  }
}