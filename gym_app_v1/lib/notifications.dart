import 'package:flutter/material.dart';
import 'package:gym_app_v1/drawer.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);
  static const String routeName = '/notifications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: createDrawer(context),
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: TimePicker(),
    );
  }
}

class TimePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TimePickerState();
  }
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: Text('When do you want to get a reminder?'),
          ),
          //const SizedBox(width: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _selectTime(context);
                },
                child: Text('Choose Time'),
              ),
              Text('${selectedTime.hour}:${selectedTime.minute}'),
            ],
          )
        ],
      ),
    );
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        initialEntryMode: TimePickerEntryMode.input);
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
