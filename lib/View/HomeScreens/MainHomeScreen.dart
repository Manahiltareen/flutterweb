import 'package:flutter/material.dart';
import 'package:flutterweb/Controller/Responsive_Layout/responsive_layout.dart';
import 'package:flutterweb/View/HomeScreens/DesktopHomeScreen.dart';
import 'package:flutterweb/View/HomeScreens/MobileHomeScreen.dart';
import 'package:flutterweb/View/HomeScreens/TabletHomeScreenn.dart';
class Mainhomescreen extends StatelessWidget {
  const Mainhomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: MobileHomeScreen(),
        desktop:DesktopHomeScreen(),
        tablet: TabletHomeScreen(),
    );
  }
}
