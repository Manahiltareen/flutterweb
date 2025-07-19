import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterweb/Controller/Dimensions/Dimensions.dart';
import 'package:flutterweb/View/HomeScreens/Container/Container.dart';
class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final  screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MyContainer(mywidth: double.infinity,
                myHeight: 0.15, text: "Hello I am blue", color: Colors.blue,fontSize: Dimensions.getSmallSize(context)),

            SizedBox(height:screenHeight * 0.01 ,),
            MyContainer(mywidth: 1, myHeight: 0.8, text: "Hello I am yellow",color: Colors.yellow,fontSize: Dimensions.getLargeSize(context),),

            SizedBox(height:screenHeight * 0.01 ,),
            MyContainer( myHeight: 0.3, text: "Hello i am red", color: Colors.red,fontSize: Dimensions.getMediumSize(context)),
            SizedBox(height:screenHeight * 0.01 ,),
            MyContainer( myHeight: 0.3, text: "Hello i am red", color: Colors.red,fontSize: Dimensions.getMediumSize(context)),
          ],
        ),
      ),
    );
  }
}
