import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final double currentProgress;

  const CirclePainter({ this.currentProgress });

  @override
  void paint(Canvas canvas, Size size) {
    var outer = Paint()
      ..color = Colors.black
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke;

    var completeArc = Paint()
      ..color = Colors.redAccent
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var offset = Offset(size.width / 2, size.height / 2);
    var radius = math.min(size.width / 2, size.height / 2) - 7;

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

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}