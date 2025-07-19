import 'package:flutter/material.dart';
import 'package:flutterweb/Controller/Dimensions/Dimensions.dart';
import 'package:flutterweb/Controller/MediaQueries/MediaQueries.dart';
class MyContainer extends StatefulWidget {
  double? mywidth;
  double? myHeight;
  String? text;
  Color? color;
  double? fontSize ;
   MyContainer({super.key,  this.mywidth, required this.myHeight, required this.text, required this.color, required this.fontSize});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {

  @override
  Widget build(BuildContext context) {
    final double containerWidth = widget.mywidth != null
        ? GetMediaQuery.getWidth(context) * widget.mywidth!
        : double.infinity;
    return 
      Container(
      width:containerWidth ,
      height: GetMediaQuery.getWidth(context)* widget.myHeight,
      color:widget.color,
        child: Center(child: Text(widget.text.toString(),
          style: TextStyle( fontSize:widget.fontSize, fontWeight:   FontWeight.bold ),)),
    );
  }
}
