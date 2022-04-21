import 'package:flutter/material.dart';

import 'body_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign up")),
      body: BodySignUp(),
    );
  }

}
