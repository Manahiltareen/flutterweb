import 'package:flutter/material.dart';
import 'package:flutterweb/Controller/Dimensions/Dimensions.dart';
import 'package:flutterweb/View/HomeScreens/Container/Container.dart';
class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double  screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyContainer(mywidth: double.infinity, myHeight: 0.15, text: "Hello I am blue", color: Colors.blue,fontSize: Dimensions.getSmallSize(context)),
            // Container(
            //   width: double.infinity,
            //   height: screenWidth * 0.15,
            //   color: Colors.blue,
            // ),
            SizedBox(height:screenHeight * 0.02 ,),
            Row(
             children: [
               Expanded(
                 flex: 2,
                 child:MyContainer( myHeight: 0.9, text: "Hello i am red", color: Colors.red,fontSize: Dimensions.getMediumSize(context)),
                 // Container(
                 //
                 //   height: screenHeight * 0.9,
                 //   color: Colors.red,
                 // ),
               ),
               SizedBox(width:screenWidth * 0.02 ,),
               Expanded(
                 flex: 8,
                 child:  MyContainer( myHeight: 0.9, text: "Hello I am yellow", color: Colors.yellow,fontSize: Dimensions.getLargeSize(context)),
               ),
             ],
            )
          ],
        ),
      ),
    );
  }
}