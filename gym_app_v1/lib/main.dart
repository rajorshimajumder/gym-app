import 'package:flutter/material.dart';
import 'package:gym_app_v1/bmiChart.dart';
import 'package:gym_app_v1/index.dart';
import 'package:gym_app_v1/notifications.dart';
import 'package:gym_app_v1/profile.dart';
import 'package:gym_app_v1/progressChart.dart';
import 'package:gym_app_v1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Index(), routes: {
      routes.profile: (context) => Profile(),
      routes.index: (context) => Index(),
      routes.notifications: (context) => Notifications(),
      routes.progressChart: (context) => ProgressChart(),
      routes.bmiChart: (context) => BMIChart(),
    });
  }
}
