import 'package:flutter/material.dart';
import 'package:internapp/models/Restaurant/restaurant_data.dart';
import 'package:internapp/widgets/restaurant_card_widget.dart';

// Home screen Restaurant list view
class Restaurant extends StatelessWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('restaurant');
      },
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: restaurantdata.length,
          itemBuilder: (context, index) {
            return RestaurantCard(
              image: restaurantdata[index].image,
              name: restaurantdata[index].name,
              location: restaurantdata[index].location,
            );
          },
        ),
      ),
    );
  }
}
