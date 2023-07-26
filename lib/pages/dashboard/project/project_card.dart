import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/utils.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel data;
  final Function()? press;
  const ProjectCard({Key? key, required this.data, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonOpacity(
      onTap: press!,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.isMobile(context) ? 50 : 13,
          vertical: 13,
        ),
        child: DecoratedBox(
          decoration: GeneralCard.shadow(),
          child: SizedBox(
            width: !AppSize.isMobile(context)
                ? AppSize.maxWidth(context) / 4
                : AppSize.maxWidth(context) * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      data.title ?? "",
                      style: const Fonts(
                              size: 22, height: 1, fontWeight: FontWeight.bold)
                          .titleOpenSans,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      data.section ?? "",
                      style: const Fonts(
                        size: 14,
                        height: 1,
                        fontWeight: FontWeight.w300,
                        color: AppColor.primaryColor,
                      ).titleOpenSans,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Readmore(
                      title: data.description ?? "",
                      fonts: const Fonts(
                        size: 14,
                        height: 1,
                        fontWeight: FontWeight.w300,
                        color: AppColor.black,
                      ).titleOpenSans,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Text(
                          data.date ?? "",
                          textAlign: TextAlign.end,
                          style: const Fonts(
                                  size: 12,
                                  height: 1,
                                  color: AppColor.articleText,
                                  fontWeight: FontWeight.w200)
                              .titleOpenSans,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
