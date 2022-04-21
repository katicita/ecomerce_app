import 'package:ecomerce_app/screen/sign_up/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_suffix_icon.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../constants.dart';
import '../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String conform_password = "";

  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConformPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                //Go to complete profile page
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  void removeError(String error) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(kInvalidEmailError);
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !errors.contains(kEmailNullError)) {
          addError(kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value!) &&
            !errors.contains(kInvalidEmailError)) {
          addError(kInvalidEmailError);
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if ((value.isNotEmpty) && errors.contains(kPassNullError)) {
          removeError(kPassNullError);
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          removeError(kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !errors.contains(kPassNullError)) {
          addError(kPassNullError);
        } else if (value!.length < 8 && !errors.contains(kShortPassError)) {
          addError(kShortPassError);
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kPassNullError);
        }
        if (value.isNotEmpty && password == value) {
          removeError(kMatchPassError);
        }
        conform_password = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(kPassNullError);
          return "";
        } else if (password != value) {
          addError(kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
    );
  }
}
