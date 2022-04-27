import 'package:ecomerce_app/components/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
import 'body_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHome(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
