import 'package:flutter/material.dart';
import 'package:internapp/screens/home_screen.dart';
import 'package:internapp/screens/introduction/onboarding_screen.dart';
import 'package:internapp/screens/qr_code/qr_code.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DineInApp',
      debugShowCheckedModeBanner: false,
     
     home: OnBoardingScreen(),
    );
  }
}
