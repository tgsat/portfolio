import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/utils.dart';

class GeneralAppBar {
  static AppBar appBarFixed(BuildContext context,
          {String? img, bool appShadow = true, Widget? widget}) =>
      AppBar(
        elevation: appShadow ? 10 : 0,
        backgroundColor: AppColor.white,
        shadowColor: appShadow ? null : const Color.fromRGBO(0, 0, 0, 0.2),
        title: Row(children: [
          const SizedBox(width: 25),
          SvgPicture.asset(
            img ?? "",
            width: 25,
            height: 25,
          )
        ]),
        actions: [
          widget!,
          const SizedBox(width: 15),
        ],
      );

  static AppBar appBarBack(BuildContext context) => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColor.primaryColor,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios),
              color: AppColor.middleBlack,
              iconSize: 20,
            ),
          ),
        ),
      );

  static AppBar appBarBackWithTitle(BuildContext context, {String? title}) =>
      AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          title ?? "",
          style: const Fonts(
                  size: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColor.middleBlack)
              .titleNunito,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColor.primaryColor,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              iconSize: 20,
            ),
          ),
        ),
      );
}
