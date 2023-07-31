import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      top: AppSize.maxHeight(context) * 0.2,
      child: SizedBox(
        height: 300,
        width: 35,
        child: Column(
          children: [
            Tooltip(
              message: "Whatapps",
              child: SocialItem.icon(
                press: () async =>
                    js.context.callMethod('open', [Url.whatapps]),
                imgURL: AppImage.whatsapp,
              ),
            ),
            Tooltip(
              message: "Instagram",
              child: SocialItem.icon(
                press: () async =>
                    js.context.callMethod('open', [Url.instagram]),
                imgURL: AppImage.instagram,
              ),
            ),
            Tooltip(
              message: "Linkedin",
              child: SocialItem.icon(
                press: () async =>
                    js.context.callMethod('open', [Url.linkedin]),
                imgURL: AppImage.linkedin,
              ),
            ),
            Tooltip(
              message: "Github",
              child: SocialItem.icon(
                press: () async => js.context.callMethod('open', [Url.github]),
                imgURL: AppImage.github,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialItem {
  static FloatingActionButton icon({String? imgURL, Function()? press}) =>
      FloatingActionButton.small(
        onPressed: press,
        backgroundColor: Colors.transparent,
        child:
            Image.network(imgURL ?? AppImage.emptyImage, height: 45, width: 45),
      );
}
