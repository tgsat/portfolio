import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/utils/utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late StreamSubscription subscription;
  var isDeviceConnection = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnections();
    super.initState();
  }

  getConnections() => subscription = Connectivity()
          .onConnectivityChanged
          .listen((ConnectivityResult result) async {
        print(result);
        isDeviceConnection = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnection && isAlertSet == false) {
          showDialogBox();
          setState(() => isAlertSet == true);
        }
      });
  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
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

  nextToDashboard() => Future.delayed(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const DashboardPage())));

  showDialogBox() => showCupertinoDialog<String>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
            title: const Text('No connections'),
            content: const Text('Please check your internet connectivity'),
            actions: [
              TextButton(
                  onPressed: () async {
                    Navigator.pop(context, 'Cancel');
                    setState(() => isAlertSet == false);
                    isDeviceConnection =
                        await InternetConnectionChecker().hasConnection;
                    if (!isDeviceConnection) {
                      showDialogBox();
                      setState(() => isAlertSet == true);
                    }
                  },
                  child: const Text('Oke'))
            ],
          ));
}
