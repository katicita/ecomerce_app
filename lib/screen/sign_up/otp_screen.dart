import 'package:flutter/material.dart';

import 'body_otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Verification")),
      body: BodyOtp(),
    );
  }
}
