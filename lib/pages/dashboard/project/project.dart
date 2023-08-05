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
        const SectionWidgets(
          title: Dictionary.lastestProject,
          subtitle: Dictionary.projectDescription,
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
              data: ProjectConstants.projects[0], //wbs-smf mobile app
              press: () => js.context.callMethod('open', [Url.smf]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[1], //saber-pungli mobile app
              press: () => js.context.callMethod('open', [Url.pedulikami]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[2], //sbi mobile app
              press: () => js.context.callMethod('open', [Url.signal]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[3], //wish waskita mobile app
              press: () => js.context.callMethod('open', [Url.wish]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[4], //grha kedoya mobile app
              press: () => js.context.callMethod('open', [Url.grha]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[5], //absensi 3 bambu mobile app
              press: () => js.context.callMethod('open', [Url.absensi]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[6], //iao-linknet website app
              press: () => js.context.callMethod('open', [Url.linknet]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[7], //iao-rucika website app
              press: () => js.context.callMethod('open', [Url.rucika]),
            ),
            ProjectCard(
              data: ProjectConstants.projects[8], //iao-kbn website app
              press: () => js.context.callMethod('open', [Url.kbn]),
            ),
          ],
        ),
      ],
    );
  }
}
