import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class SkillWidget {
  static Padding card(BuildContext context, {String? url}) => Padding(
        padding: const EdgeInsets.all(13.0),
        child: DecoratedBox(
          decoration: GeneralCard.shadow(),
          child: SizedBox(
            height: !AppSize.isMobile(context)
                ? AppSize.maxWidth(context) / 6.8
                : 77,
            width: !AppSize.isMobile(context)
                ? AppSize.maxWidth(context) / 6.8
                : 77,
            child: Padding(
              padding: AppSize.isMobile(context)
                  ? const EdgeInsets.all(8.0)
                  : const EdgeInsets.all(30.0),
              child: Image.network(url ?? AppImage.emptyImage),
            ),
          ),
        ),
      );
}

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              AppSize.isMobile(context) ? 10 : AppSize.maxWidth(context) / 7),
      child: Wrap(
        children: [
          Tooltip(
              message: "Flutter",
              child: SkillWidget.card(
                context,
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
              )),
          Tooltip(
              message: "Github",
              child: SkillWidget.card(
                context,
                url: 'https://cdn-icons-png.flaticon.com/512/2504/2504911.png',
              )),
          Tooltip(
              message: "Firebase",
              child: SkillWidget.card(
                context,
                url:
                    'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png',
              )),
          Tooltip(
              message: "Figma",
              child: SkillWidget.card(
                context,
                url: 'https://cdn-icons-png.flaticon.com/512/5968/5968705.png',
              )),
          Tooltip(
              message: "C++ Arduino",
              child: SkillWidget.card(
                context,
                url: 'https://cdn-icons-png.flaticon.com/512/6132/6132222.png',
              )),
          Tooltip(
              message: "Git",
              child: SkillWidget.card(
                context,
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png',
              )),
          Tooltip(
              message: "PHP",
              child: SkillWidget.card(
                context,
                url: 'https://cdn-icons-png.flaticon.com/512/5968/5968332.png',
              )),
          Tooltip(
              message: "Laravel",
              child: SkillWidget.card(
                context,
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/1200px-Laravel.svg.png',
              )),
          Tooltip(
              message: "My Sql Server",
              child: SkillWidget.card(
                context,
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Database-mysql.svg/1448px-Database-mysql.svg.png',
              )),
        ],
      ),
    );
  }
}
