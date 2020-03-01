import 'package:arch_progress/painter/CirclePainter.dart';
import 'package:flutter/material.dart';

class ArchProgressIndicatorWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double currentProgress;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  const ArchProgressIndicatorWidget({
    Key key,
    this.child,
    this.height,
    this.width,
    this.currentProgress,
    this.strokeWidth,
    this.progressColor,
    this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        foregroundPainter: CirclePainter(
          currentProgress: this.currentProgress,
          backgroundColor: this.backgroundColor,
          progressColor: this.progressColor,
          strokeWidth: this.strokeWidth
        ),
        child: Container(
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}