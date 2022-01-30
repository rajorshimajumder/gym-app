import 'package:flutter/material.dart';
import 'package:gym_app_v1/bmiChart.dart';
import 'package:gym_app_v1/index.dart';
import 'package:gym_app_v1/notifications.dart';
import 'package:gym_app_v1/profile.dart';
import 'package:gym_app_v1/progressChart.dart';
import 'package:gym_app_v1/routes.dart';
import 'package:gym_app_v1/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const WelcomeScreen(), routes: {
      routes.profile: (context) => const Profile(),
      routes.index: (context) => const Index(),
      routes.notifications: (context) => const Notifications(),
      routes.progressChart: (context) => const ProgressChart(),
      routes.bmiChart: (context) => const BMIChart(),
    });
  }
}
