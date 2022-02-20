import 'package:flutter/material.dart';
import 'package:internapp/models/Restaurant/restaurant_data.dart';
import 'package:internapp/widgets/restaurant_card_widget.dart';
import 'package:internapp/widgets/tab_bar_widget.dart';

// Home screen Restaurant list view
class Restaurant extends StatelessWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurantdata.length,
        itemBuilder: (context, index) {
          return GestureDetector(
             onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TabBarWidget( data: restaurantdata[index]);
        }));
      },
            child: RestaurantCard(
              image: restaurantdata[index].image,
              name: restaurantdata[index].name,
              location: restaurantdata[index].location,
            ),
          );
        },
      ),
    );
  }
}
