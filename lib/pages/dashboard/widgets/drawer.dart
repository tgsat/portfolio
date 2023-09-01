import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/utils/utils.dart';

class ActionDrawer extends StatelessWidget {
  final ScrollController sc;
  const ActionDrawer({Key? key, required this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.close, color: AppColor.primaryColor),
        ),
      ),
      body: Center(child: ActionHomePage(sc: sc)),
    );
  }
}
