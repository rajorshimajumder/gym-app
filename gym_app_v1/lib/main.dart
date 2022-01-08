import 'package:flutter/material.dart';
import 'package:gym_app_v1/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('Gym App'),
          centerTitle: true,
        ),
        body: Container(
          child: const Index(),
        ),
      ),
    );
  }
}
