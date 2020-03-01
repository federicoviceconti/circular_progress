library arch_progress;

import 'package:arch_progress/painter/CirclePainter.dart';
import 'package:flutter/material.dart';

class ArchProgressIndicatorWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double currentProgress;

  const ArchProgressIndicatorWidget({
    Key key,
    this.child,
    this.height,
    this.width,
    this.currentProgress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        foregroundPainter: CirclePainter(
          currentProgress: this.currentProgress
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

