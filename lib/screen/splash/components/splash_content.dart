import 'package:flutter/material.dart';
import 'package:ecomerce_app/size_config.dart';
import 'package:ecomerce_app/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text, textAlign: TextAlign.center),
        const Spacer(flex: 2),
        Image.asset(
          image,
          width: getProportionateScreenWidth(265),
          height: getProportionateScreenHeight(235),
        ),
      ],
    );
  }
}
