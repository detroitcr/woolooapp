import 'package:flutter/material.dart';
import 'package:internapp/screens/home_screen.dart';
import 'package:internapp/screens/custom_bottom_navigationbar.dart';
import 'package:internapp/authentication/widget/otp_input_widget.dart';
import 'package:internapp/widgets/size_config.dart';

import '../../utils/custom_color.dart';

class OTPSCREEN extends StatefulWidget {
  const OTPSCREEN({Key? key}) : super(key: key);

  @override
  State<OTPSCREEN> createState() => _OTPSCREENState();
}

class _OTPSCREENState extends State<OTPSCREEN> {
//4 text editing controller that associated with 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Phone Number Verification'),
          SizedBox(
            height: 30,
          ),
          // Implement 4 input fields
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpInput(
                _fieldOne,
                true,
              ),
              OtpInput(
                _fieldTwo,
                true,
              ),
              OtpInput(
                _fieldThree,
                true,
              ),
              OtpInput(
                _fieldFour,
                true,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //Display the entered code
          Text(
            _otp ?? 'Please Enter OTP',
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CustomBottomNavigationBar();
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
    );
  }
}
