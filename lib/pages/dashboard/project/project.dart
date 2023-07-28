import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/utils/utils.dart';

import '../../../data/data.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          child: Text(
            Dictionary.lastestProject,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.isMobile(context) ? 40 : 80),
          child: Text(
            Dictionary.projectDescription,
            style: Fonts(
              size: 16,
              height: 1.0,
              color: AppColor.articleText.withOpacity(0.8),
              fontWeight: FontWeight.w500,
            ).titleOpenSans,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
              data: ProjectConstants.projects[0],
              press: () {
                js.context.callMethod('open', [Url.signal]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[1],
              press: () {
                js.context.callMethod('open', [Url.wish]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[2],
              press: () {
                js.context.callMethod('open', [Url.qhse]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[3],
              press: () {
                js.context.callMethod('open', [Url.baf]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[4],
              press: () {
                js.context.callMethod('open', [Url.grha]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[5],
              press: () {
                js.context.callMethod('open', [Url.absensi]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[6],
              press: () {
                js.context.callMethod('open', [Url.linkedin]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[7],
              press: () {
                js.context.callMethod('open', [Url.mayBank]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[8],
              press: () {
                js.context.callMethod('open', [Url.hsePln]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[9],
              press: () {
                js.context.callMethod('open', [Url.hsePln]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[10],
              press: () {
                js.context.callMethod('open', [Url.hsePln]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[11],
              press: () {
                js.context.callMethod('open', [Url.hsePln]);
              },
            ),
          ],
        ),
      ],
    );
  }
}
