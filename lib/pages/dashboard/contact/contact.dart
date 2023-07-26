import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class ContactWidget {
  static Padding content(BuildContext context, {String? title}) => Padding(
        padding: AppSize.isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 30)
            : const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            title ?? "",
            style: const Fonts(
                    size: 18,
                    color: AppColor.white,
                    fontWeight: FontWeight.w400)
                .titleNunito,
          ),
        ),
      );
}

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.maxWidth(context),
      color: AppColor.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            Dictionary.contactMe,
            style: const Fonts(
                    size: 20,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold)
                .titleNunito,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "If you have any question, Please feel free to ask.",
            style:
                const Fonts(color: AppColor.white, fontWeight: FontWeight.w400)
                    .titleNunito,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: AppSize.isMobile(context)
                    ? AppSize.maxWidth(context) / 6
                    : AppSize.maxWidth(context) / 2),
            child: Wrap(
              children: [
                ContactWidget.content(
                  context,
                  title: "+62 811 3936 365",
                ),
                ContactWidget.content(
                  context,
                  title: "tgsatt.wicaksono@gmail.com",
                ),
                ContactWidget.content(
                  context,
                  title: "@sstr.io_",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
