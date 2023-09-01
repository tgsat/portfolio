import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/dependency_injection.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/utils/utils.dart';

void main() {
  runApp(const MyApp());
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Dictionary.hiIamTgsatt,
      theme: AppTheme.primaryTheme,
      home: const SplashPage(),
    );
  }
}
