import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class Footer extends StatelessWidget {
  final Function()? press;
  const Footer({Key? key, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('© Copyright 2022'),
        InkWell(
          onTap: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Built with ❤ by '),
              InkWell(
                onTap: () {},
                child: const Text('tgsatt',
                    style: TextStyle(
                      color: AppColor.primaryColor,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
