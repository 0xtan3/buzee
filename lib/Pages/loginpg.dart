import 'package:buzee/Components/my_textfields.dart';
import 'package:flutter/material.dart';
class loginpg extends StatefulWidget {
  const loginpg({Key? key}) : super(key: key);

  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
            //logo
              const Icon(Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),
            //welcome back, you've been missed!
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(color: Colors.grey[700],
                fontSize: 16),
              ),

              const SizedBox(height: 25),
            //username textfield
              const My_textfield(),

              const SizedBox(height: 50),
            //password textfield
              const My_textfield(),



            //forgot password?



            //or continue with



            //google sign in button
            
            //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}

