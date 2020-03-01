import 'package:arch_progress/circular_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  _buildHasChildTest();
}

void _buildHasChildTest() {
  var progress = 80.0;
  var textInWidget = "$progress%";
  var child = Text(textInWidget);

  testWidgets("Has child in progress", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ArcIndicatorWidget(
          height: 200.0,
          width: 200.0,
          currentProgress: progress,
          backgroundColor: Colors.black,
          progressColor: Colors.red,
          strokeWidth: 10.0,
          child: child
        ),
      )
    );

    final hasText = find.text(textInWidget);
    expect(hasText, findsOneWidget);
  });
}
