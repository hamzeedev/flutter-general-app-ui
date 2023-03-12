import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mini/customs/customTextfield.dart';
import 'package:mini/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
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

                const SizedBox(height: 25), 

                // Username Customized Textfield...
                CustomTextField(
                  controller:   usernameController, 
                  hintText:    'Enter Username', 
                  obscureText:  false
                  ),

                  const SizedBox(height: 10),

                // Password Customized Textfield...
                CustomTextField(
                  controller:   passwordController, 
                  hintText:    'Enter Password', 
                  obscureText:  true
                  ),

                  const SizedBox(height: 10),
                  
                  // forgot password ...
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.blueGrey[600], fontWeight: FontWeight.bold),
                        )
                      ],
                    ),

                  ),

                  const SizedBox(height: 25),

                  

                  const SizedBox(height: 50), 

                  const SizedBox(height: 50), 

                  const SizedBox(height: 50), 





              ],
            )
            ),
        )
         ),
    );
  }
}
