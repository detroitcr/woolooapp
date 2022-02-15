import 'package:flutter/material.dart';
import 'package:internapp/widgets/secondcard_widget.dart';
import 'package:internapp/widgets/size_config.dart';

import '../models/dummy_data.dart';

class SecondListViewWidget extends StatelessWidget {
  // SecondListViewWidget is a listview builder who show second card widget
  const SecondListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.deviceHeight * 0.16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyData.length,
              itemBuilder: (context, index) {
                final data = dummyData[index];
                return GestureDetector(
                  onTap: () {},
                  child: SecondCardWidget(
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
