import 'package:arch_progress/circular_progress.dart';
import 'package:arch_progress/widget/arc_indicator_widget.dart';
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
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("CircularIndicatorWidget"),
                SizedBox(height: 20),
                CircularIndicatorWidget(
                  width: 150.0,
                  height: 150.0,
                  currentProgress: progress,
                  backgroundColor: Colors.black,
                  progressColor: Colors.redAccent,
                  strokeWidth: 7.0,
                  child: Center(
                      child: Text(
                        "${progress.toInt()}%",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22
                        ),
                      )
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("ArcIndicatorWidget"),
                SizedBox(height: 20),
                ArcIndicatorWidget(
                  width: 150.0,
                  height: 150.0,
                  currentProgress: progress,
                  backgroundColor: Colors.black,
                  progressColor: Colors.redAccent,
                  strokeWidth: 7.0,
                  child: Center(
                      child: Text(
                        "${progress.toInt()}%",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22
                        ),
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}