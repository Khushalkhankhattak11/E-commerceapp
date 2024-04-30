import 'package:commerceapp/common/widget/customshape/curveshape/curveshape.dart';
import 'package:flutter/material.dart';

class TCurvedWidget extends StatelessWidget {
  final Widget? child;
  const TCurvedWidget({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurve(),
      child: child,
    );
  }
}
