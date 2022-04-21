import 'package:ecomerce_app/constants.dart';
import 'package:ecomerce_app/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class BodyOtp extends StatelessWidget {
  const BodyOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                'OTP Verification',
                style: headingStyle,
              ),
              Text("We sent your code to +1 898 860 ***"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  //re-send your OTP
                },
                child: const Text(
                  "Resent OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 30, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, double value, child) => Text(
            '00:${value.toInt()}',
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
