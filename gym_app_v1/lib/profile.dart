import 'package:flutter/material.dart';
import 'package:gym_app_v1/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: createDrawer(context),
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Icon(Icons.edit),
                    Text('Edit'),
                  ])),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.grey,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: ClipOval(
                          child: Image(
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                            height: 200,
                            width: 200,
                          ),
                        ))),
                Text('Name'),
                Text('Age'),
                Text('Height'),
                Text('Weight')
              ]))
        ],
      ),
    );
  }
}
