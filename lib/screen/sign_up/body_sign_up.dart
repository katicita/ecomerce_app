import 'package:ecomerce_app/screen/sign_up/sign_up_form.dart';
import 'package:ecomerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/social_card.dart';
import '../../constants.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({Key? key}) : super(key: key);

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
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text("Register Account", style: headingStyle),
              const Text(
                "Complete your details or continue \n with the social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              const Text(
                "By continuing your confirm that you agree \nwith our terms and conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
