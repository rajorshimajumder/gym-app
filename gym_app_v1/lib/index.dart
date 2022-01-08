import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
          Image(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
            height: 200,
            width: 200,
          ),
          Text('Name'),
          Text('BMI'),
          Text('Streak')
        ])));
  }
}
