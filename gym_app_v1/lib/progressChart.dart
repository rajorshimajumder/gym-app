import 'package:flutter/material.dart';
import 'package:gym_app_v1/drawer.dart';
import 'package:gym_app_v1/routes.dart';

class ProgressChart extends StatelessWidget {
  const ProgressChart({Key? key}) : super(key: key);
  static const String routeName = '/progressChart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: createDrawer(context),
      appBar: AppBar(
        title: const Text('Progress Chart'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, routes.bmiChart);
                  },
                  child: const Text('BMI'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, routes.bmiChart);
                  },
                  child: const Text('Sets'),
                )
          ])
        ),
    );
  }
}
