import 'package:flutter/material.dart';
import 'package:internapp/screens/sign_in_screen.dart';
import 'package:internapp/screens/splash_screen.dart';
import 'package:internapp/widgets/custom_bottom_navigationbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      home: LoginScreen(),
    );
  }
}