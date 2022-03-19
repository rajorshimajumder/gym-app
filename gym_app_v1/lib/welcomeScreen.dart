import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app_v1/routes.dart';
import 'package:http/http.dart';
import 'notifications_service.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WelcomeScreenState();
  }
}

class WelcomeScreenState extends State<WelcomeScreen> {
  String serverResponse = '';

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
                //Navigator.pushReplacementNamed(context, routes.index);
                _makeGetRequest();
                NotificationService service = NotificationService();
                service.showTimedNotifications();
              },
              child: Text(
                'Create Your profile',
                style: GoogleFonts.acme(fontSize: 20),
              )),
          Padding(
              padding: const EdgeInsets.all(8.0), child: Text(serverResponse)),
          const FractionallySizedBox(
            widthFactor: 1,
          ),
        ]));
  }

  _makeGetRequest() async {
    final url = Uri.parse(_localhost());
    Response response =
        await get(url, headers: {"Access-Control_Allow_Origin": "*"});
    setState(() {
      serverResponse = response.body;
    });
  }

  String _localhost() {
    return 'http://127.0.0.1:3000';
  }
}
