import 'package:flutter/material.dart';

abstract class BasePainter extends CustomPainter {
  final double currentProgress;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  const BasePainter({
    this.currentProgress,
    this.backgroundColor,
    this.progressColor,
    this.strokeWidth
  });

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}