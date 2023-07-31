import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:readmore/readmore.dart';

class Readmore extends StatelessWidget {
  final String title;
  final int lines;
  final TextStyle fonts;
  const Readmore({
    super.key,
    required this.title,
    this.lines = 2,
    required this.fonts,
  });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      title,
      trimLines: lines,
      style: fonts,
      colorClickableText: AppColor.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: ' More',
      trimExpandedText: ' Less',
    );
  }
}
