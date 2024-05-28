import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:comercial/auth/login.dart';
import 'package:comercial/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:AnimatedSplashScreen(
        splash: 'assets/netflix.gif',
        splashIconSize: 2000.0,
        centered: true,
        nextScreen: Login(),
        duration: 3100,
        backgroundColor: Colors.black,
        
      ),
    );
  }
}
