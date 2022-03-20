import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_app_v1/drawer.dart';
import 'package:gym_app_v1/notifications_service.dart';
import 'package:timezone/timezone.dart' as tz;

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
      body: const TimePicker(),
    );
  }
}

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

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
            child: const Text('When do you want to get a reminder?'),
          ),
          //const SizedBox(width: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _selectTime(context);
                },
                child: const Text('Choose Time'),
              ),
              Text('${selectedTime.hour}:${selectedTime.minute}'),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                NotificationService service = NotificationService();
                service.showTimedNotifications(setScheduledTime(selectedTime));
              },
              child: Text(
                'Save Reminder',
                style: GoogleFonts.acme(fontSize: 20),
              )),
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

  tz.TZDateTime setScheduledTime(TimeOfDay selectedTime) {
    DateTime dateTime = DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, selectedTime.hour, selectedTime.minute, 0, 0, 0)
        .toUtc();
    return tz.TZDateTime(tz.local, dateTime.year, dateTime.month, dateTime.day,
        dateTime.hour, dateTime.minute, 0, 0, 0);
  }
}
