import 'package:flutter/material.dart';

// same effect in as (TouchableOpacity), witout plugin
class ButtonOpacity extends StatefulWidget {
  final Widget? child;
  final Function() onTap;
  const ButtonOpacity({
    Key? key,
    this.child,
    required this.onTap,
  });

  @override
  State<ButtonOpacity> createState() => _ButtonOpacityState();
}

class _ButtonOpacityState extends State<ButtonOpacity> {
  bool isTappedDown = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        onTapDown: (tapDownDetails) {
          setState(() {
            isTappedDown = true;
          });
        },
        onTapUp: (tapUpDetails) {
          setState(() {
            isTappedDown = false;
          });
        },
        child: widget.child);
  }
}
