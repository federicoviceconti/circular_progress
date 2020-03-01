import 'package:arch_progress/painter/arc_painter.dart';
import 'package:arch_progress/widget/base_widget.dart';
import 'package:flutter/material.dart';

class ArcIndicatorWidget extends BaseWidget {
  const ArcIndicatorWidget({Key key, child,
    height,
    width,
    currentProgress,
    strokeWidth,
    progressColor,
    backgroundColor
  }) : super(key: key, child: child,
      height: height,
      width: width,
      currentProgress: currentProgress,
      strokeWidth: strokeWidth,
      progressColor: progressColor,
      backgroundColor: backgroundColor
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        foregroundPainter: ArcPainter(
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
