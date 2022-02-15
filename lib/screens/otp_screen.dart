import 'package:flutter/material.dart';
import 'package:internapp/widgets/otp_input_widget.dart';

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
        ],
      ),
    );
  }
}
