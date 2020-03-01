import 'package:arch_progress/arch_progress.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Arch indicator")),
        body: Center(
          child: ArchProgressIndicatorWidget(
            width: 200,
            height: 200,
            currentProgress: 80,
            child: Center(
              child: Text("100%")
            ),
          ),
        ),
      ),
    );
  }
}