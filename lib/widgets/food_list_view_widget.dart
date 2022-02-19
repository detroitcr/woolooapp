import 'package:flutter/material.dart';
import 'package:internapp/models/Food/food_data.dart';
import 'package:internapp/widgets/size_config.dart';
import 'package:internapp/widgets/text_widget.dart';

class FoodListView extends StatefulWidget {
  const FoodListView({Key? key}) : super(key: key);
  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20, left: 20, top: 20),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 0.8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 1, color: Colors.red),
              ),
              hintText: 'Search Food Items',
              prefixIcon: Icon(Icons.search, size: 30),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {},
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: fooddataitems.length,
            itemBuilder: (context, index) {
              final data = fooddataitems[index];
              return Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MyText(
                          text: data.name,
                          size: 30.0,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        MyText(
                          text: data.description,
                          size: 24.0,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow),
                          ),
                        ),
                        MyText(
                          text: '\₹ ' + data.price,
                          fontColor: Colors.red,
                          size: 30.0,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: SizeConfig.deviceWidth * 0.24,
                          height: SizeConfig.deviceWidth * 0.25,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(8.0),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(data.image),
                            ),
                            // Image(
                            //   fit: BoxFit.fill,
                            //   image: NetworkImage(data.image),
                            // ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.deviceHeight * 0.01,
                        ),
                        Container(
                          height: 24,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: MyText(
                              text: 'ADD +'.toUpperCase(),
                              fontColor: Colors.red,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
