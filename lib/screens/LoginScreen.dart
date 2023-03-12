import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mini/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // method to nevigate from login to Home Screen...
  void userLogin() {
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        )
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                const SizedBox(height: 50),

                // app logo...
                Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.blueGrey[900],
                  ),

                const SizedBox(height: 50),  

                // welcome note of app
                Text(
                  'Welcom back to your G E N E R A L  A P P',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 50), 

                // Username Customized Textfield...
                // Password Customized Textfield...



              ],
            )
            ),
        )
         ),
    );
  }
}
