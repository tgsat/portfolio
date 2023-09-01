import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class GeneralButton {
  static TextButton primary(
          {Function()? press,
          Color? color,
          Color? backgroundColor,
          String? title,
          Color? sideColor}) =>
      TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
            primary: color ?? Colors.white,
            backgroundColor: backgroundColor ?? AppColor.primaryColor,
            padding: const EdgeInsets.all(16.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            side: BorderSide(color: sideColor ?? AppColor.primaryColor)),
        child: Text(
          title ?? "",
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );

  static TextButton info(
          {Function()? press,
          Color? color,
          Color? backgroundColor,
          String? title}) =>
      TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: AppColor.blueLink,
            padding: const EdgeInsets.all(18.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            )),
        child: Text(
          title ?? "",
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );

  static Row rowFixed({
    Function()? pressFirst,
    String? titleFirst,
    Function()? pressSecond,
    String? titleSecond,
  }) =>
      Row(
        children: [
          TextButton(
            onPressed: pressFirst,
            style: TextButton.styleFrom(
                backgroundColor: AppColor.grey.withOpacity(0.8),
                padding: const EdgeInsets.all(16.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                side: const BorderSide(color: AppColor.grey)),
            child: Text(
              titleFirst ?? "",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColor.articleText,
              ),
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: pressSecond,
            style: TextButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                padding: const EdgeInsets.all(16.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                side: const BorderSide(color: AppColor.primaryColor)),
            child: Text(
              titleSecond ?? "",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColor.white,
              ),
            ),
          ),
        ],
      );
}
