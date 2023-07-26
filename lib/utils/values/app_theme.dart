import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class AppTheme {
  static ThemeData primaryTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    // accentColor: AppColor.accentColor,
    indicatorColor: AppColor.primaryColor,
    bottomAppBarColor: AppColor.bottomAppBarColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColor.greyText),
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),
      // textTheme: TextTheme(
      //   headline6: TextStyle(
      //     color: AppColor.black,
      //     fontSize: SizeConfig.textBig,
      //     fontWeight: FontWeight.w800,
      //   ),
      // ),
      elevation: 2,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    ),
  );
}
