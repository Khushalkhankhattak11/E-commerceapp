import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TCustomCurve extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstcurve = Offset(0, size.height - 20);
    final lastcurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);

    final secondfcurve = Offset(0, size.height - 20);
    final secondlastcurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondfcurve.dx, secondfcurve.dy, secondlastcurve.dx,
        secondlastcurve.dy);

    final thridfirstcurve = Offset(size.width, size.height - 20);
    final thridlastcurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thridfirstcurve.dx, thridfirstcurve.dy,
        thridlastcurve.dx, thridlastcurve.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return true;
  }
}
