import 'package:arch_progress/arch_progress.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var progress = 80.0;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Arch indicator")),
        body: Center(
          child: ArchProgressIndicatorWidget(
            width: 150,
            height: 150,
            currentProgress: progress,
            backgroundColor: Colors.black,
            progressColor: Colors.redAccent,
            strokeWidth: 7,
            child: Center(
              child: Text(
                "${progress.toInt()}%",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}