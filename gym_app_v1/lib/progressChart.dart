import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gym_app_v1/drawer.dart';

class ProgressChart extends StatelessWidget {
  const ProgressChart({Key? key}) : super(key: key);
  static const String routeName = '/progressChart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: createDrawer(context),
      appBar: AppBar(
        title: const Text('Progress Chart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // ChartDropdown(),
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.fromLTRB(0, 100, 30, 100),
            child: LineChart(LineChartData(
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(spots: [
                    FlSpot(0, 1),
                    FlSpot(1, 2),
                    FlSpot(2, 4),
                    FlSpot(3, 7),
                    FlSpot(4, 3),
                  ])
                ])),
          ),
        ],
      ),
    );
  }
}

class ChartDropdown extends StatefulWidget {
  const ChartDropdown({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChartDropdownState();
}

class _ChartDropdownState extends State<ChartDropdown> {
  String dropdownValue = 'BMI';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      items:
          <String>['BMI', 'Sets'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
