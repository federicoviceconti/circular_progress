
import 'package:flutter/material.dart';

abstract class BaseWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double currentProgress;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  const BaseWidget({
    Key key,
    this.child,
    this.height,
    this.width,
    this.currentProgress,
    this.strokeWidth,
    this.progressColor,
    this.backgroundColor
  }) : super(key: key);
}