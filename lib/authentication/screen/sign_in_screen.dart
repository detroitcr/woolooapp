import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internapp/authentication/screen/otp_screen.dart';
import 'package:internapp/utils/custom_color.dart';
import 'package:internapp/widgets/custom_text_field.dart';
import 'package:internapp/widgets/size_config.dart';
import 'package:internapp/widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
//_controller = PersistentTabController(initialIndex: 0);

  // for mobile phone s text field controller
  final TextEditingController _mobilenumbercontroller = TextEditingController();

  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 34),
          width: double.infinity,
          child: Column(
            // centered like horizontal direction x axis
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              // svg image
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.black,
                height: 64,
              ),
              SizedBox(height: SizeConfig.deviceHeight * 0.0654),
              // textfield input email
              CustomTextField(
                // we have to create a variable for text editing controller
                textEditingController: _mobilenumbercontroller,
                textInputType: TextInputType.phone,
                hintText: 'Mobile Number',
                icon: Icon(Icons.phone),
              ),
              SizedBox(height: SizeConfig.deviceHeight * 0.032),
              // textfield input password
              Divider(),
              // button login
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OTPSCREEN();
                  }));
                },
                child: Container(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    color: activeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.deviceHeight * 0.016,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
