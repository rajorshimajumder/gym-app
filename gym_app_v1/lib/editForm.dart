import 'package:flutter/material.dart';
import 'package:gym_app_v1/drawer.dart';
import 'package:gym_app_v1/routes.dart';

class EditForm extends StatefulWidget {
  const EditForm({Key? key}) : super(key: key);
  static const String routeName = '/editProfile';

  @override
  State<StatefulWidget> createState() {
    return EditFormState();
  }
}

class EditFormState extends State<EditForm> {
  final _editFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: createDrawer(context),
        appBar: AppBar(
          title: const Text('Edit Profile Form'),
          centerTitle: true,
        ),
        body: Form(
            key: _editFormKey,
            child: Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 8,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter your name", labelText: "Name"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter your age", labelText: "Age"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            if (int.tryParse(value) == null) {
                              return 'Only numbers are allowed';
                            }
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter your height",
                              labelText: "Height"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            if (int.tryParse(value) == null) {
                              return 'Only numbers are allowed';
                            }
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter your weight",
                              labelText: "Weight"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            if (int.tryParse(value) == null) {
                              return 'Only numbers are allowed';
                            }
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 40),
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_editFormKey.currentState!.validate()) {
                                    Navigator.pushReplacementNamed(context, routes.profile);
                                  }
                                },
                                child: const Text("Submit")))
                      ],
                    )),
                Expanded(flex: 1, child: Container()),
              ],
            )));
  }
}
