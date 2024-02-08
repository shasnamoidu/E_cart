import 'package:flutter/material.dart';

class  CustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    //first curve
    final firstcurve = Offset(0, size.height - 20);
    final lastcurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);
    
    //stright line
    final startline = Offset(0, size.height-20);
    final endline = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(startline.dx, startline.dy, endline.dx, endline.dy);
    
    //lastcurve
    final secondfirstcurve = Offset(size.width, size.height-20);
    final secondlastcurve = Offset(size.width, size.height);
    path.quadraticBezierTo(secondfirstcurve.dx, secondfirstcurve.dy, secondlastcurve.dx, secondlastcurve.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}