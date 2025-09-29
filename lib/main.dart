import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:meditation_app/app.dart';
import 'package:meditation_app/screen/music_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>  MeditaitionApp(),
      // এখানে Meditation এর ভেতরেই amra sob screen niye khela korci
    ),
  );
}