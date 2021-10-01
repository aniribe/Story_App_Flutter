import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double cardAspectRatio = 12.0 / 16.0;
  static double widgetAspectRatio = cardAspectRatio * 1.2;

  static Widget verticalSpace(double height) => SizedBox(height: height);
  static Widget horizontalSpace(double width) => SizedBox(width: width);
}
