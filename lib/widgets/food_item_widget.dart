import 'package:flutter/material.dart';
import 'package:internapp/models/Food/food_data.dart';

Widget itemList(Size size) {
  return Container(
    height: size.height / 4,
    width: size.width,
    child: GridView.builder(
      itemCount: fooddataitems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return Container(
          height: size.height / 3,
          width: size.width / 5,
          child: Wrap(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print(fooddataitems[index].name);
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      // height: size.height / 10,
                      // width: size.width / 10,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            fooddataitems[index].image,
                          ),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(fooddataitems[index].name),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}
