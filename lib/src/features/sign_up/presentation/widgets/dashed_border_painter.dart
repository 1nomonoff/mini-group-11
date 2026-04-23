import 'package:flutter/material.dart';
import 'package:mini_group_11/src/core/consts/colors/app_colors.dart';

class DashedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.red3
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const dashWidth = 2.0;
    const dashSpace = 2.0;

    double x = 0;
    while (x < size.width) {
      canvas.drawLine(Offset(x, 0), Offset(x + dashWidth, 0), paint);
      x += dashWidth + dashSpace;
    }
    x = 0;
    while (x < size.width) {
      canvas.drawLine(Offset(x, size.height), Offset(x + dashWidth, size.height), paint);
      x += dashWidth + dashSpace;
    }
    double y = 0;
    while (y < size.height) {
      canvas.drawLine(Offset(0, y), Offset(0, y + dashWidth), paint);
      y += dashWidth + dashSpace;
    }
    y = 0;
    while (y < size.height) {
      canvas.drawLine(Offset(size.width, y), Offset(size.width, y + dashWidth), paint);
      y += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}