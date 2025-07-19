import 'package:flutter/material.dart';
import 'package:flutterweb/Controller/MediaQueries/MediaQueries.dart';
class Dimensions {

  static getSmallSize(BuildContext context) => GetMediaQuery.getWidth(context) * 0.02;
  static getMediumSize(BuildContext context) => GetMediaQuery.getWidth(context) * 0.04;
  static getLargeSize(BuildContext context) => GetMediaQuery.getWidth(context) * 0.07;
  
}