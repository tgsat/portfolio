import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class ActionHomePage extends StatelessWidget {
  final ScrollController sc;
  const ActionHomePage({Key? key, required this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = AppSize.isMobile(context);
    return isMobile
        ? Column(children: getWidgets(sc, context, isMobile: true))
        : Row(children: getWidgets(sc, context));
  }

  List<Widget> getWidgets(
    ScrollController sc,
    BuildContext context, {
    bool isMobile = false,
  }) {
    int scrollDur = isMobile ? 800 : 500;
    return [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
            onPressed: () {
              if (isMobile) Navigator.pop(context);
              sc.animateTo(50,
                  duration: Duration(milliseconds: scrollDur),
                  curve: Curves.easeIn);
            },
            child: Text(Dictionary.about,
                style: const Fonts(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w400,
                        size: AppSize.textMedium,
                        height: 1)
                    .titleOswald)),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
            onPressed: () {
              if (isMobile) Navigator.pop(context);
              sc.animateTo(
                500,
                duration: Duration(milliseconds: scrollDur),
                curve: Curves.easeIn,
              );
            },
            child: Text(Dictionary.skill,
                style: const Fonts(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w400,
                        size: AppSize.textMedium,
                        height: 1)
                    .titleOswald)),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
            onPressed: () {
              if (isMobile) Navigator.pop(context);
              sc.animateTo(
                isMobile ? 900 : 1000,
                duration: Duration(milliseconds: scrollDur),
                curve: Curves.easeIn,
              );
            },
            child: Text(Dictionary.work,
                style: const Fonts(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w400,
                        size: AppSize.textMedium,
                        height: 1)
                    .titleOswald)),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
            onPressed: () {
              if (isMobile) Navigator.pop(context);
              sc.animateTo(
                1550,
                duration: Duration(milliseconds: scrollDur),
                curve: Curves.easeIn,
              );
            },
            child: Text(Dictionary.project,
                style: const Fonts(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w400,
                        size: AppSize.textMedium,
                        height: 1)
                    .titleOswald)),
      ),
    ];
  }
}
