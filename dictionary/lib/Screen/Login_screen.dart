import 'package:dictionary/Widgets/my_button.dart';
import 'package:dictionary/Widgets/Text_field.dart'; // Corrected the import path
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Method to sign user in
  void signUserIn() {
    // Your sign-in logic here
  }

  // Method to handle sign up
  void signUp() {
    // Your sign-up logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Image(
                  image: AssetImage('assets/images/dictionary.png'), // Updated the asset path
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 50),
                Text(
                  "LexiGuide: Instant Access to Definitions",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 50),

                MyTextField(
                  controller: usernameController,
                  hintText: "username",
                  obscureText: false, // Corrected the property name
                ),
                SizedBox(height: 20),
                MyTextField(
                  controller: passwordController,
                  hintText: "password",
                  obscureText: true,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot password ?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                MyButton(
                  onTap: signUserIn,
                ),
                SizedBox(height: 20),
                Text('Not registered, sign up then'), // Added text widget for sign up
                MyButton(
                  onTap: signUp, // Corrected the onTap function call
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
