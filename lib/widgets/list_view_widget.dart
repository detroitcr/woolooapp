import 'package:flutter/material.dart';
import 'package:internapp/models/dummy_data.dart';
import 'package:internapp/widgets/card_widget.dart';
import 'package:internapp/widgets/size_config.dart';




/// first row of home screen
class ListViewWidget extends StatelessWidget {
  //this listview widget have list view builder to show Cardwidget
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.deviceHeight * 0.238,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyData.length,
              itemBuilder: (context, index) {
                final data = dummyData[index];
                return GestureDetector(
                  onTap: () {},
                  child: CardWidget(
                    image: data.image,
                    name: data.name,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
