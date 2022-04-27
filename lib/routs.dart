import 'package:ecomerce_app/screen/Details/detail_screen.dart';
import 'package:ecomerce_app/screen/cart/cart_screen.dart';
import 'package:ecomerce_app/screen/forgot_password/forgot_password_screen.dart';
import 'package:ecomerce_app/screen/home/home_screen.dart';
import 'package:ecomerce_app/screen/login_success/login_success_screen.dart';
import 'package:ecomerce_app/screen/profile/profile_screen.dart';
import 'package:ecomerce_app/screen/sign_in/sign_in_screen.dart';
import 'package:ecomerce_app/screen/sign_up/complete_profile_screen.dart';
import 'package:ecomerce_app/screen/sign_up/otp_screen.dart';
import 'package:ecomerce_app/screen/sign_up/sign_up_screen.dart';
import 'package:ecomerce_app/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
