import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:internapp/widgets/size_config.dart';
import 'package:internapp/widgets/text_widget.dart';

class CardWidget extends StatelessWidget {
  // Card Widget is first row widgets in home screen
  const CardWidget({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: SizeConfig.deviceWidth * 0.280,
            height: SizeConfig.deviceHeight * 0.43,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 15),
            alignment: Alignment.bottomLeft,
            width: SizeConfig.deviceWidth * 0.280,
            height: SizeConfig.deviceHeight * 0.43,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.05),
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.7),
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
            ),
            child: MyText(
              text: name,
              fontColor: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
