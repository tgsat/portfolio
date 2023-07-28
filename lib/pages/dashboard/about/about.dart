import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/utils/utils.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: AppSize.isMobile(context)
                  ? AppSize.maxWidth(context)
                  : AppSize.maxWidth(context) / 2,
              height: AppSize.isMobile(context)
                  ? AppSize.maxHeight(context) / 2
                  : AppSize.maxHeight(context) - 70,
              child: Padding(
                padding: AppSize.isMobile(context)
                    ? const EdgeInsets.all(5.0)
                    : const EdgeInsets.only(
                        top: 50, bottom: 50, right: 10, left: 100),
                child: SvgPicture.asset(
                  "assets/svg/image.svg",
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: AppSize.isMobile(context)
                  ? AppSize.maxWidth(context)
                  : AppSize.maxWidth(context) / 2,
              height: AppSize.isMobile(context)
                  ? AppSize.maxHeight(context) / 2
                  : AppSize.maxHeight(context) - 70,
              child: Center(
                child: SizedBox(
                  height: AppSize.isMobile(context)
                      ? 355 / (AppSize.maxWidth(context) * 0.0025)
                      : 330,
                  width: AppSize.isMobile(context)
                      ? AppSize.maxWidth(context) * 0.85
                      : 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Dictionary.welcomeToPortofolio,
                          style: const Fonts(
                            size: 11,
                            color: AppColor.articleText,
                            fontWeight: FontWeight.bold,
                          ).titleOpenSans,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(Dictionary.hiIam,
                              style: const Fonts(
                                height: 1,
                                size: 24,
                                fontWeight: FontWeight.w700,
                              ).titleOpenSans)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Dictionary.aboutDescription,
                          style: Fonts(
                            size: 16,
                            height: 1.0,
                            color: AppColor.articleText.withOpacity(0.8),
                            fontWeight: FontWeight.w500,
                          ).titleOpenSans,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 14),
                          child: GeneralButton.rowFixed(
                            titleFirst: Dictionary.resume,
                            pressFirst: () {
                              js.context.callMethod('open', [Url.resume]);
                            },
                            titleSecond: Dictionary.hireMe,
                            pressSecond: () {
                              js.context.callMethod('open', [Url.hireMe]);
                            },
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
