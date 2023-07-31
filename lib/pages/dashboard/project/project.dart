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
        const SectionPages(
          title: Dictionary.lastestProject,
          subtitle: Dictionary.projectDescription,
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
              data: ProjectConstants.projects[0],
              press: () {
                // wbs smf
                js.context.callMethod('open', [Url.smf]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[1],
              press: () {
                // saber pungli
                js.context.callMethod('open', [Url.pedulikami]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[2],
              press: () {
                // signal sbi
                js.context.callMethod('open', [Url.signal]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[3],
              press: () {
                // wish
                js.context.callMethod('open', [Url.wish]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[4],
              press: () {
                // sim qhse
                js.context.callMethod('open', [Url.qhse]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[5],
              press: () {
                // grha kedoya
                js.context.callMethod('open', [Url.grha]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[6],
              press: () {
                // digital presence
                js.context.callMethod('open', [Url.absensi]);
              },
            ),
            ProjectCard(
              data: ProjectConstants.projects[7],
              press: () {
                // skip
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
