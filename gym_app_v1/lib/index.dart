import 'package:flutter/material.dart';
import 'drawer.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);
  static const String routeName = '/index';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: createDrawer(context),
        appBar: AppBar(
          title: const Text('Dashboard'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              const CircleAvatar(
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
              const Text('Name'),
              const Text('BMI'),
              const Text('Streak'),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Start Workout'))
            ])));
  }
}
