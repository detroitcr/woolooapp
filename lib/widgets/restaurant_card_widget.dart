

import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String image;
  final String location;
  const RestaurantCard({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              image,
              height: 120,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
            height: 30,
            padding: EdgeInsets.only(
              left: 10,
              bottom: 10,
            ),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
