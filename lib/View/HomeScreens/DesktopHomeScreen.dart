import 'package:flutter/material.dart';
import 'package:flutterweb/Controller/Dimensions/Dimensions.dart';
import 'package:flutterweb/View/HomeScreens/Container/Container.dart';
class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double  screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyContainer(mywidth: double.infinity,
                myHeight: 0.12, text: "Hello I am blue", color: Colors.blue,fontSize: Dimensions.getSmallSize(context)),

            SizedBox(height:screenHeight * 0.02 ,),
            MyContainer( myHeight: 0.8, text: "Hello I am yellow", color: Colors.yellow,fontSize: Dimensions.getLargeSize(context)),

            SizedBox(height:screenHeight * 0.02 ,),
            Row(
              children: [
                Expanded(
                  child:
                  MyContainer( myHeight: 0.5, text: "Hello i am red", color: Colors.red,fontSize: Dimensions.getMediumSize(context)),
                ),
                SizedBox(width:screenWidth * 0.02 ,),
                Expanded(
                  child:
                  MyContainer( myHeight: 0.5, text: "Hello i am red", color: Colors.red,fontSize: Dimensions.getMediumSize(context)),
                ),
                SizedBox(width:screenWidth * 0.02 ,),
                Expanded(
                  child:
                  MyContainer( myHeight: 0.5, text: "Hello i am red", color: Colors.red,fontSize: Dimensions.getMediumSize(context)),
                ),
              ],
            ),
              SizedBox(height:screenHeight * 0.02 ,),
          ],
        ),
      ),
    );
  }
}