import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      alignment: Alignment.center,
      child: TextButton(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          ),
        ),
        child: Icon(
          iconData,
          color: kSecondaryColor,
          size: getProportionateScreenWidth(20),
        ),
        onPressed: press,
      ),
    );
  }
}
