# Use example

```dart
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
```
