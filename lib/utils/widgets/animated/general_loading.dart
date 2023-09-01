import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:portfolio/utils/utils.dart';

class GeneralLoading {
  static SpinKitThreeBounce threeBounce(
          {Color color = AppColor.primaryColor}) =>
      SpinKitThreeBounce(
        size: 20,
        itemBuilder: (BuildContext context, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              color: index.isEven ? Colors.white : color,
            ),
          );
        },
      );

  static SpinKitCubeGrid cubeGrid() => SpinKitCubeGrid(
        itemBuilder: (BuildContext context, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.white : Colors.white60,
            ),
          );
        },
      );

  static SpinKitSpinningLines spinningLines() => const SpinKitSpinningLines(
        size: 45,
        color: AppColor.white,
      );

  static Column spinKitWithText({Widget? isSpinKit, String? title}) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isSpinKit ??
              const SpinKitSpinningLines(
                size: 45,
                color: AppColor.white,
              ),
          const SizedBox(height: 8),
          Text(title ?? "",
              style: const Fonts(
                      size: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w700)
                  .titleNunito)
        ],
      );

  static SpinKitFadingCircle fadingCircle() => SpinKitFadingCircle(
        itemBuilder: (BuildContext context, int index) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: index.isEven
                  ? AppColor.articleText.withOpacity(0.8)
                  : AppColor.articleText,
            ),
          );
        },
      );
}
