
import 'package:flutter/material.dart';

class CustomDashLine extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 4, dashSpace = 5, startX = 0;
    final paint = Paint()
    ..color = Colors.grey
    ..strokeWidth = 3;
    while( startX < size.width){
      canvas.drawLine(Offset(startX, 0), Offset(startX, dashWidth), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}