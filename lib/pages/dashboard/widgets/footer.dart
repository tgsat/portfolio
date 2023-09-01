import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class Footer extends StatelessWidget {
  final Function()? press;
  const Footer({Key? key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: AppColor.primaryColor),
      child: Column(
        children: [
          Text(
            '© Copyright 2022',
            style: const Fonts(
              size: 14,
              height: 1,
              fontWeight: FontWeight.w400,
              color: AppColor.white,
            ).titleOpenSans,
          ),
          InkWell(
            onTap: press,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Built with ❤ by ',
                  style: const Fonts(
                    size: 14,
                    height: 1,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white,
                  ).titleOpenSans,
                ),
                Text(
                  'tgsatt',
                  style: const Fonts(
                    size: 14,
                    height: 1,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white,
                  ).titleOpenSans,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
