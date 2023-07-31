import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class SectionPages extends StatelessWidget {
  final String title;
  final String subtitle;
  const SectionPages({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.isMobile(context) ? 40 : 80),
          child: Text(
            subtitle,
            style: Fonts(
              size: 16,
              height: 1.0,
              color: AppColor.articleText.withOpacity(0.8),
              fontWeight: FontWeight.w500,
            ).titleOpenSans,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
