import 'package:ecomerce_app/screen/forgot_password/forgot_password_screen.dart';
import 'package:ecomerce_app/screen/login_success/login_success_screen.dart';
import 'package:ecomerce_app/screen/sign_in/sign_in_screen.dart';
import 'package:ecomerce_app/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};
