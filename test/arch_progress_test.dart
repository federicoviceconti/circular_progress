import 'package:arch_progress/arch_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  _buildHasChildTest();
}

void _buildHasChildTest() {
  var textInWidget = "100%";
  var child = Text(textInWidget);

  testWidgets("Has child in progress", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: CircularIndicatorWidget(child: child),
      )
    );

    final hasText = find.text(textInWidget);
    expect(hasText, findsOneWidget);
  });
}
