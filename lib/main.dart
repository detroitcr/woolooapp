import 'package:flutter/material.dart';

import 'package:internapp/screens/introduction/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DineApp',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
