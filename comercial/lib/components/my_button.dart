import 'package:flutter/material.dart';

class my_button extends StatelessWidget {
  final String buttonContent;
  final Function() ? onTap;

  const my_button({super.key,
  required this.buttonContent,
  required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Text(
            buttonContent,
            style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )
          ),
        ),
      ),
    );
  }
}