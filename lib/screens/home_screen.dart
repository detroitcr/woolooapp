import 'package:flutter/material.dart';
import 'package:internapp/screens/map_screen.dart';
import 'package:internapp/widgets/second_list_viewwidget.dart';
import 'package:internapp/widgets/size_config.dart';
import 'package:internapp/widgets/text_widget.dart';

import '../utils/custom_color.dart';
import '../widgets/list_view_widget.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 2,
              backgroundImage: AssetImage('assets/images/amazon.jpg'),
            ),
          ),
          title: MyText(
            text: 'WELCOME TO COLLEGE MATE',
            size: 26,
            fontColor: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.grey.shade700,
                size: 30,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, right: 14, left: 14),
          child: ListView(
            children: [
              ListViewWidget(),
              SizedBox(
                height: SizeConfig.deviceHeight * 0.010,
              ),
              MyText(
                text: 'Container Text',
                size: 24,
              ),
              SizedBox(
                height:
                    SizeConfig.deviceHeight * 0.010, // change size into small
              ),
              GestureDetector(
                onTap: () {},
                child: SecondListViewWidget(),
              ),
              SizedBox(
                height:
                    SizeConfig.deviceHeight * 0.010, // change size into small
              ),
              MyText(
                text: 'Container Text',
                size: 24,
              ),
              SizedBox(
                height: SizeConfig.deviceHeight * 0.010,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          print('qr code');
                        },
                        child: Container(
                          height: SizeConfig.deviceHeight * 0.20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/qrcode.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              MyText(
                text: 'Container Text',
                size: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MapScreen();
                      },
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    // fix height and width
                    Container(
                      height: SizeConfig.deviceHeight * 0.20,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/map.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 12, bottom: 5),
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 18),
                          primary: Colors.white,
                          side: BorderSide(
                            width: 1,
                            color: activeColor,
                          ),
                        ),
                        onPressed: () {},
                        child: MyText(
                          text: 'Book Now'.toUpperCase(),
                          fontColor: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
