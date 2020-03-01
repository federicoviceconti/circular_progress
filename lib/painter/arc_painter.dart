import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:arch_progress/painter/base_painter.dart';

class ArcPainter extends BasePainter {
  const ArcPainter({
    currentProgress,
    backgroundColor,
    progressColor,
    strokeWidth
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
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var completeArc = Paint()
      ..color = this.progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var offset = Offset(size.width / 2, size.height / 2);
    var radius = math.min(size.width, size.height / 2);

    double angleOuter = _getAngle(100);
    double angleProgress = _getAngle(currentProgress);

    canvas.drawArc(Rect.fromCircle(
        center: offset,
        radius: radius
      ), math.pi / 1.4, angleOuter, false, outer
    );

    canvas.drawArc(Rect.fromCircle(
          center: offset,
          radius: radius
      ), math.pi / 1.4, angleProgress, false, completeArc
    );
  }

  double _getAngle(double progress) {
    return 2 * math.pi / 1.25 * (progress / 100);
  }
}