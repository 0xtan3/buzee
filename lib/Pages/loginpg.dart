import 'package:buzee/Components/my_button.dart';
import 'package:buzee/Components/my_textfields.dart';
import 'package:buzee/Components/square_tile.dart';
import 'package:flutter/material.dart';
class loginpg extends StatelessWidget {
  loginpg({Key? key}) : super(key: key);

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              my_textfield(
                controller: usernameController,
                hintText: 'username',
                obscureText: false,
              ),

              const SizedBox(height: 10),
            //password textfield
              my_textfield(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),

              const SizedBox(height: 10,),
            //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        'Forgot password?',
                    style:TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 25.0),
            //sign in button
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(height: 25),
            //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children:[
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700])

                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )
                    ),
                  ],
                ),
              ),
            const SizedBox(height:50),
            //google sign in button

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: 'img/google.png'),
                  SizedBox(width: 20,),
                //apple signIn
                  SquareTile(imagePath: 'img/apple.png'),
                ],
              ),
              const SizedBox(height:50),
            //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('not a member?',
                  style: TextStyle(color: Colors.grey[700])
                  ),
                  const SizedBox(width:4),
                  const Text('register now',
                  style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

