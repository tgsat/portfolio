import 'dart:async';

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/utils/utils.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  StreamSubscription? internetconnection;
  bool isoffline = false;

  @override
  void initState() {
    internetconnection = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // whenevery connection status is changed.
      if (result == ConnectivityResult.none) {
        //there is no any connection
        AlertPages.isMaterial(
          context,
          title: 'No internet connection available',
        );
        setState(() {
          isoffline = true;
        });
      } else if (result == ConnectivityResult.mobile) {
        //connection is mobile data network
        AlertPages.isMaterial(context,
            title: '', type: AnimatedSnackBarType.success);
        setState(() {
          isoffline = false;
        });
      } else if (result == ConnectivityResult.wifi) {
        //connection is from wifi
        AlertPages.isMaterial(context,
            title: '', type: AnimatedSnackBarType.success);
        setState(() {
          isoffline = false;
        });
      }
    });
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
    internetconnection!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: _scaffoldKey,
      backgroundColor: AppColor.main,
      appBar: GeneralAppBar.appBarFixed(
        context,
        appShadow: true,
        img: AppImage.icon,
        widget: Row(children: [
          AppSize.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    child: const Tooltip(
                      message: "Menu",
                      child: Icon(Icons.menu,
                          color: AppColor.primaryColor, size: 30),
                    ),
                    onTap: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : ActionHomePage(sc: myScrollController),
        ]),
      ),
      endDrawer: AppSize.isMobile(context)
          ? ActionDrawer(sc: myScrollController)
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: myScrollController,
              child: const Column(
                children: [
                  About(),
                  Skill(),
                  SizedBox(height: 50),
                  JobHistory(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  Footer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const Social(),
          ],
        ),
      ),
    );
  }
}
