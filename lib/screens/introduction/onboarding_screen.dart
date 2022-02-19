import 'package:flutter/material.dart';
import 'package:internapp/authentication/screen/sign_in_screen.dart';
import 'package:internapp/models/onboard_model.dart';

import 'package:internapp/utils/custom_color.dart';
import 'package:internapp/screens/custom_bottom_navigationbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kwhite,
        appBar: AppBar(
          backgroundColor: kwhite,
          elevation: 0.0,
          actions: [
            TextButton(
              onPressed: () {
                _storeOnboardInfo();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: kblack,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: PageView.builder(
            itemCount: screens.length,
            controller: _pageController,
            physics: AlwaysScrollableScrollPhysics(),
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    screens[index].img,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 20.0,
                    child: ListView.builder(
                      itemCount: screens.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 3.0),
                              width: currentIndex == index ? 25 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Text(
                    screens[index].text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      color: kblack,
                    ),
                  ),
                  Text(
                    screens[index].desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: kblack,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      print(index);
                      if (index == screens.length - 1) {
                        await _storeOnboardInfo();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }

                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.bounceIn,
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                      decoration: BoxDecoration(
                        color: kblue,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: kwhite,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: kwhite,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}































































































































// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// class OnBoardingScreen extends StatefulWidget {
//   @override
//   _OnBoardingScreenState createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   List<PageViewModel> getPages() {
//     return [
//       PageViewModel(
//         image: Image.asset('assets/images/college.jpg'),
//         body: 'First Intro',
//         title: 'Clone',
//         footer: Text('@coding'),
//       ),
//       PageViewModel(
//         image: Image.asset('assets/images/college.jpg'),
//         body: 'First Intro',
//         title: 'Clone',
//         footer: Text('@coding'),
//       ),
//       PageViewModel(
//         image: Image.asset('assets/images/college.jpg'),
//         body: 'First Intro',
//         title: 'Clone',
//         footer: Text('@coding'),
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: IntroductionScreen(
//         showNextButton: false,
//         pages: getPages(),
//         done: Text(
//           'Read',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         onDone: () {},
//         back: Icon(
//           Icons.arrow_back,
//           size: 26,
//         ),
//         globalBackgroundColor: Colors.white,
//       ),
//     );
//   }
// }
