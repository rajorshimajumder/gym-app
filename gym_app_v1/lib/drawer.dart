import 'package:flutter/material.dart';
import 'package:gym_app_v1/routes.dart';

Widget createDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menu'),
        ),
        ListTile(
          title: const Text('Index'),
          onTap: () {
            Navigator.pushReplacementNamed(context, routes.index);
          },
        ),
        ListTile(
          title: const Text('Profile'),
          onTap: () {
            Navigator.pushReplacementNamed(context, routes.profile);
          },
        ),
        ListTile(
          title: const Text('Notifications'),
          onTap: () {
            Navigator.pushReplacementNamed(context, routes.notifications);
          },
        ),
        ListTile(
          title: const Text('PRogress Chart'),
          onTap: () {
            Navigator.pushReplacementNamed(context, routes.progressChart);
          },
        )
      ],
    ),
  );
}
