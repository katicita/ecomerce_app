import 'package:ecomerce_app/enums.dart';
import 'package:ecomerce_app/screen/profile/body_profile.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: BodyProfile(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
