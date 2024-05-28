import 'package:flutter/material.dart';

class my_text_field extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Icon prefixIcon;

  const my_text_field(
    {super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(216, 8, 27, 238)),
                  borderRadius : BorderRadius.circular(15),
                  
                ),
            
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius : BorderRadius.circular(15),
                ),
                fillColor: Colors.white10,
                filled:true,
                hintText: hintText,
              ),
            ),
          );
  }
}