import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app_v1/routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            'Welcome to Gym App',
            style: GoogleFonts.muli(fontSize: 40),
          ),
          Image.asset(
            'welcome_image.jpg',
            height: 500,
            width: 500,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[600]),
                  minimumSize: MaterialStateProperty.all(const Size(250, 60)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80)))),
              onPressed: () {
                Navigator.pushReplacementNamed(context, routes.index);
              },
              child: Text(
                'Create Your profile',
                style: GoogleFonts.acme(fontSize: 20),
              )),
          const FractionallySizedBox(
            widthFactor: 1,
          ),
        ]));
  }
}
