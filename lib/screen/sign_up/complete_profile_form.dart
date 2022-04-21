import 'package:ecomerce_app/screen/sign_up/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../components/custom_suffix_icon.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../constants.dart';
import '../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String address = "";

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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                //Go to the OTP Screen
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          removeError(kNamelNullError);
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !errors.contains(kNamelNullError)) {
          addError(kNamelNullError);
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      // keyboardType: TextInputType.text,
      onSaved: (newValue) => lastName = newValue!,
      decoration: const InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  TextFormField buildPhoneNumberField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          removeError(kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !errors.contains(kPhoneNumberNullError)) {
          addError(kPhoneNumberNullError);
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg'),
      ),
    );
  }

  TextFormField buildAddressField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          removeError(kAddressNullError);
        }
      },
      validator: (value) {
        if ((value == null || value.isEmpty) &&
            !errors.contains(kAddressNullError)) {
          addError(kAddressNullError);
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg'),
      ),
    );
  }
}
