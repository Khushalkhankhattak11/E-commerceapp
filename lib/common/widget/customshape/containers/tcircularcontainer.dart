import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double padding;
  final double radius;
  final Color backgroundcolor;
  final Widget? child;
  const TCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.radius = 400,
    this.backgroundcolor = Colors.white,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundcolor,
      ),
      child: child,
    );
  }
}
