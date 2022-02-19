import 'package:flutter/material.dart';
import 'package:internapp/screens/foodmenu_screen.dart';
import 'package:internapp/widgets/food_list_view_widget.dart';

class TabBarWidget extends StatefulWidget {
  
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.money),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2, // length of tabs
        initialIndex: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black54,
              tabs: [
                Tab(text: 'Dine In'),
                Tab(text: 'TakeOut'),
              ],
            ),
            
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  FoodListView(),
                  FoodListView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
