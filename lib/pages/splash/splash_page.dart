import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/utils/utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const DashboardPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: AppColor.primaryColor,
          width: AppSize.maxWidth(context),
          height: AppSize.maxHeight(context),
          child: Center(
              child: GeneralLoading.spinKitWithText(
            title: Dictionary.pleaseWait,
          ))),
    );
  }
}
