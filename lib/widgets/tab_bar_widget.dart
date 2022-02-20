import 'package:flutter/material.dart';
import 'package:internapp/models/Restaurant/restaurant_data.dart';
import 'package:internapp/screens/foodmenu_screen.dart';
import 'package:internapp/screens/qr_code/qr_code.dart';
import 'package:internapp/widgets/food_list_view_widget.dart';
import 'package:internapp/widgets/text_widget.dart';

class TabBarWidget extends StatefulWidget {
  final RestaurantData data;
  TabBarWidget({required this.data});

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: 'Menu',
          fontColor: Colors.black,
          size: 30,
        ),
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return QrCodeScan();
              }));
            },
            icon: Icon(
              Icons.qr_code,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2, // length of tabs
        initialIndex: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            header(size, widget.data),
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

  Widget header(size, RestaurantData data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.asset(data.image),
        ),
        Text(data.name),
        Text(data.location),
        Text(data.distance),
        Text(data.timing),
      ],
    );
  }
}
