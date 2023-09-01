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
        const SectionWidgets(
          title: Dictionary.jobHistory,
          subtitle: Dictionary.jobDescription,
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            JobCard(data: JobConstants.jobs[0]),
            JobCard(data: JobConstants.jobs[1]),
            JobCard(data: JobConstants.jobs[2]),
          ],
        ),
      ],
    );
  }
}
