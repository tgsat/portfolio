import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/pages/pages.dart';

class JobHistory extends StatelessWidget {
  const JobHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          child: Text(
            Dictionary.jobHistory,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.isMobile(context) ? 40 : 80),
          child: ButtonOpacity(
            onTap: () {
              js.context.callMethod('open', [Url.github]);
            },
            child: RichText(
                softWrap: true,
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: Dictionary.jobDescription,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    children: <InlineSpan>[
                      TextSpan(
                        text: Dictionary.github,
                        style: TextStyle(
                            fontSize: 16, color: AppColor.primaryColor),
                      ),
                    ])),
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            JobCard(data: JobConstants.jobs[0]),
            JobCard(data: JobConstants.jobs[1]),
          ],
        ),
      ],
    );
  }
}
