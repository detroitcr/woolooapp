import 'package:flutter/material.dart';
import 'package:internapp/widgets/food_list_view_widget.dart';
import 'package:internapp/widgets/tab_bar_widget.dart';

// after the restaurant button screen pressed
class FoodMenuScreen extends StatelessWidget {
  
  const FoodMenuScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(size),
            TabBarWidget(),
            FoodListView(),
          ],
        ),
      ),
    );
  }
}

Widget header(Size size) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width / 2.5,
              child: Text(
                'Stanza Cafe',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Container(
                alignment: Alignment.centerLeft,
                width: size.width / 3,
                child: Text(
                  'Western',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width / 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.timer),
                ),
                Text('37 Mins'),
                SizedBox(
                  width: size.width / 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on,
                    ),
                  ),
                ),
                Text('Live Tracking'),
              ],
            ),
          ],
        ),
      ),
      Container(
        height: size.height / 3.5,
        width: size.width / 3,
        alignment: Alignment.topRight,
        child: Container(
          height: size.height / 15,
          width: size.width / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.green,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '3.9',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Delievery',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
