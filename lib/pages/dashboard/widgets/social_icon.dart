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
                press: () {
                  js.context.callMethod('open', [Url.whatapps]);
                },
                imgURL: 'https://cdn-icons-png.flaticon.com/512/733/733585.png',
              ),
            ),
            Tooltip(
              message: "Instagram",
              child: SocialItem.icon(
                press: () async {
                  js.context.callMethod('open', [Url.instagram]);
                },
                imgURL:
                    'https://cdn-icons-png.flaticon.com/512/3955/3955024.png',
              ),
            ),
            Tooltip(
              message: "Linkedin",
              child: SocialItem.icon(
                press: () async {
                  js.context.callMethod('open', [Url.linkedin]);
                },
                imgURL: 'https://cdn-icons-png.flaticon.com/512/145/145807.png',
              ),
            ),
            Tooltip(
              message: "Github",
              child: SocialItem.icon(
                press: () async {
                  js.context.callMethod('open', [Url.github]);
                },
                imgURL: 'https://cdn-icons-png.flaticon.com/512/733/733609.png',
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
