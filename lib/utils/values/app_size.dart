import 'package:flutter/material.dart';

class AppSize {
  static const double textSizeVerySmall = 12.0;
  static const double textSizeSmall = 14.0;
  static const double textMedium = 16.0;
  static const double textBig = 18.0;
  static const double textLarge = 20.0;
  static const double textExtraLarge = 22.0;

  static const double marginActivity = 20.0;
  static const double marginForm = 10.0;
  static const double marginFab = 68.0;
  static const double marginCard = 2.0;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }

  static double maxHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double maxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
