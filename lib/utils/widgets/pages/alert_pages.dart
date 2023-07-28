import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

class AlertPages {
  static AnimatedSnackBar isMaterial(BuildContext context,
          {String? title, AnimatedSnackBarType? type}) =>
      AnimatedSnackBar.material(
        title ?? "",
        type: type ?? AnimatedSnackBarType.error,
        mobilePositionSettings:
            const MobilePositionSettings(topOnAppearance: 100),
        mobileSnackBarPosition: MobileSnackBarPosition.top,
        desktopSnackBarPosition: DesktopSnackBarPosition.topCenter,
      );
}
