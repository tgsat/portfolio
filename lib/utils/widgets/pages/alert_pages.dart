import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: AppColor.primaryColor,
          width: AppSize.maxWidth(context),
          height: AppSize.maxHeight(context),
          child: Center(
              child: GeneralLoading.spinKitWithText(
            title: "Please connect to the internet!",
          ))),
    );
  }
}
