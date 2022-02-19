import 'package:flutter/material.dart';
import 'package:internapp/screens/foodmenu_screen.dart';
import 'package:internapp/screens/home_screen.dart';

import 'package:internapp/widgets/restaurant_widget.dart';
import 'package:internapp/widgets/tab_bar_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DineInApp',
      debugShowCheckedModeBanner: false,
      //  home: FoodMenuScreen(),
      home: TabBarWidget(),
      // home: AppHomeScreen(),
    );
  }
}
