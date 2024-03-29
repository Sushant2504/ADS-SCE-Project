import 'package:dictionary/Widgets/Text_field.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 50),

              Image(
               image: AssetImage('./images/dictionary.png'),
               height: 100,
               width: 100,
              ),

              const SizedBox(height: 50,),

              Text(
                "LexiGuide: Instant Access to Definitions",
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 20,
                   
                 ),
              ),

              const SizedBox(height: 50,),

              MyTextField(
                controller: usernameController, 
                hintText: "username", 
                obcureText: false,
              ),

              const SizedBox(height: 50,),

              MyTextField(
                controller: passwordController, 
                hintText: "password",  
                obcureText: true,
              ),


              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'forgot password ?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              

              
            ]
                 ),

              ),



            ]
          ),
        ),
      ),
    );
  }
}
