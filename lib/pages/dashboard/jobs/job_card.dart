import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/utils.dart';

class JobCard extends StatelessWidget {
  final JobModel data;
  const JobCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            padding: AppSize.isMobile(context)
                ? const EdgeInsets.all(20)
                : const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    data.title ?? "",
                    style: const Fonts(
                      size: 22,
                      height: 1,
                      fontWeight: FontWeight.bold,
                    ).titleOpenSans,
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    data.address ?? "",
                    style: Fonts(
                      size: 16,
                      height: 1,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black.withOpacity(0.8),
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
                      fontWeight: FontWeight.w400,
                      color: AppColor.articleText,
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
                          fontWeight: FontWeight.w400,
                        ).titleOpenSans,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
