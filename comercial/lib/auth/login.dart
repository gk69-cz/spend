import 'package:comercial/components/box_tile.dart';
import 'package:comercial/components/my_button.dart';
import 'package:comercial/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  // text editing controller
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              // logo
              Icon(
                Icons.abc,
                size: 100,
              ),
              const SizedBox(
                height: 30,
              ),

              // welcome back message
              Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Good to see you again !',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // username field
              my_text_field(
                hintText: 'Email',
                obscureText: false,
                controller: _usernameController,
                prefixIcon: Icon(Icons.email),
              ),
              SizedBox(
                height: 20,
              ),
              // password field
              my_text_field(
                hintText: 'Password',
                obscureText: true,
                controller: _passwordController,
                prefixIcon: Icon(Icons.lock),
              ),
              // password field

              SizedBox(
                height: 10,
              ),
              //forgot pass
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Color.fromARGB(115, 90, 52, 146),)
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 10,
              ),

              // signin
              my_button(buttonContent : 'Login' ,onTap: SignIn(),),
 SizedBox(
                height: 25,
              ),
// or continue with
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25.0),
  child: Row(
    children: [
      Expanded(
        child: Divider(
          thickness: 0.5,
          color:Colors.black12
        ),),
        Text('Or continue with'),
         Expanded(
        child: Divider(
          thickness: 0.5,
          color:Colors.black12
        ),),
              ]),
),
   //google +apple signing

       SizedBox(height: 30,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
      box_tile(imagePath: 'assets/apple.png',onTap: signinApple(),),
      SizedBox(width: 10,),
     box_tile(imagePath: 'assets/google.png',onTap: signinGoogle()),
  ],
),
           
              
            ],
          ),
        ),
      ),
    );
  }
}

signinGoogle() {
}

signinApple() {
}

SignIn() {

}
