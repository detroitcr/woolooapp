import 'package:flutter/material.dart';
import 'package:internapp/screens/fields_screen.dart';
import 'package:internapp/screens/home_screen.dart';
import 'package:internapp/screens/map_screen.dart';
import 'package:internapp/screens/introduction/onboarding_screen.dart';
import 'package:internapp/authentication/screen/sign_in_screen.dart';
import 'package:internapp/screens/splash_screen.dart';
import 'package:internapp/widgets/custom_bottom_navigationbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: AppHomeScreen(),
     // home: MapScreen(),
      // home: OnBoardingScreen(),
      // home: SplashScreen(),
      // home: FieldScreen(),
      home: CustomBottomNavigationBar(),
     
    );
  }
}
