import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internapp/models/practice_model.dart';
import 'package:internapp/widgets/custom_text_field.dart';
import 'package:internapp/widgets/size_config.dart';

class FieldScreen extends StatefulWidget {
  const FieldScreen({Key? key}) : super(key: key);

  @override
  State<FieldScreen> createState() => _FieldScreenState();
}

class _FieldScreenState extends State<FieldScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 100,
                ),
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  color: Colors.black,
                  height: 64,
                ),
                SizedBox(
                  height: SizeConfig.deviceHeight * 0.052,
                ),
                CustomTextField(
                  textEditingController: _controller1,
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Enter Your Name',
                  icon: Icon(Icons.email),
                ),
                SizedBox(
                  height: SizeConfig.deviceHeight * 0.032,
                ),
                CustomTextField(
                  textEditingController: _controller2,
                  textInputType: TextInputType.name,
                  hintText: 'Enter Your Garage Name',
                  icon: Icon(Icons.settings),
                ),
                SizedBox(
                  height: SizeConfig.deviceHeight * 0.032,
                ),
                CustomTextField(
                  textEditingController: _controller3,
                  textInputType: TextInputType.number,
                  hintText: 'AADHAR NUMBER',
                  icon: Icon(Icons.mail),
                ),
                SizedBox(
                  height: SizeConfig.deviceHeight * 0.032,
                ),
                Container(
                  child: const Text(
                    'Continue',
                    style: TextStyle(color: Colors.white),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  decoration: const ShapeDecoration(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
