// after List view widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internapp/widgets/size_config.dart';

class SecondCardWidget extends StatelessWidget {
  // SecondCardWidget second row amazon image container widgets
  final String name;
  final String image;
  const SecondCardWidget({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      // elevation: 6,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Image.asset(
            image,
            width: SizeConfig.deviceWidth * 0.515,
            height: SizeConfig.deviceHeight * 0.43,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, bottom: 15),
            alignment: Alignment.bottomLeft,
            width: SizeConfig.deviceWidth * 0.515,
            height: SizeConfig.deviceHeight * 0.43,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(0.05),
                Colors.black.withOpacity(0.1),
                Colors.black.withOpacity(0.7),
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
            ),
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
