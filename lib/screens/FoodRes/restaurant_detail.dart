import 'package:flutter/material.dart';
import 'package:internapp/widgets/size_config.dart';
import 'package:internapp/widgets/tab_bar_widget.dart';
import 'package:internapp/widgets/text_widget.dart';

class RestaurentDetailPage extends StatefulWidget {
  final String name;
  final String image;

  final String timing;
  final String distance;

  RestaurentDetailPage({
    required this.timing,
    required this.distance,
    required this.name,
    required this.image,
  });

  @override
  _RestaurentDetailPageState createState() => _RestaurentDetailPageState();
}

class _RestaurentDetailPageState extends State<RestaurentDetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: SizeConfig.deviceHeight * 0.235,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: widget.name,
                          fontWeight: FontWeight.w500,
                          size: 34,
                        ),
                        MyText(
                          text: widget.timing,
                          fontWeight: FontWeight.w300,
                          size: 24,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 22,
                            ),
                            SizedBox(width: SizeConfig.deviceWidth * 0.020),
                            Text(widget.distance),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            widget.image,
                            height: SizeConfig.deviceHeight * 0.12,
                            width: SizeConfig.deviceWidth * 0.22,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.deviceHeight * 0.01,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

















































// import 'package:flutter/material.dart';
// import 'package:internapp/widgets/food_list_view_widget.dart';

// class FoodMenuScreen extends StatelessWidget {
//   const FoodMenuScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Stack(
//               children: [
//                 Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           image: DecorationImage(
//                             image: AssetImage(
//                               'assets/images/restaurant1.jpg',
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(60),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 IconButton(
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   icon: Icon(
//                                     Icons.arrow_back,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 200,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 const SizedBox(
//                                   height: 20,
//                                 ),
//                                 Text(
//                                   "Cool Cafe",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w700,
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Row(
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     // rating small container
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                         border: Border.all(
//                                           width: 1,
//                                           color: Colors.green,
//                                         ),
//                                       ),
//                                       padding:const EdgeInsets.symmetric(
//                                         vertical: 4,
//                                         horizontal: 8,
//                                       ),
//                                       child: const Text(
//                                         'Rating 4.0',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
