import 'dart:math' as math;

import 'package:arch_progress/painter/base_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularPainter extends BasePainter {
  final double currentProgress;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  const CircularPainter({
    this.currentProgress,
    this.backgroundColor,
    this.progressColor,
    this.strokeWidth
  }): super(
      currentProgress: currentProgress,
      backgroundColor: backgroundColor,
      progressColor: progressColor,
      strokeWidth: strokeWidth
  );

  @override
  void paint(Canvas canvas, Size size) {
    var outer = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    var completeArc = Paint()
      ..color = this.progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var offset = Offset(size.width / 2, size.height / 2);
    var radius = math.min(size.width / 2, size.height / 2);

    canvas.drawCircle(offset, radius, outer);

    double angle = 2 * math.pi * (currentProgress / 100);

    canvas.drawArc(
        Rect.fromCircle(
          center: offset,
          radius: radius
        ),
        -math.pi / 2,
        angle,
        false,
        completeArc
    );
  }
}