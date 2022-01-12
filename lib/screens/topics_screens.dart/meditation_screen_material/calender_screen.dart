import 'package:flutter/material.dart';
import 'package:paix_app/screens/topics_screens.dart/meditation_screen_material/timer_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatefulWidget {
  // const CalenderScreen({Key? key}) : super(key: key);

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9668A8),
      ),
      body: Container(
          child: Column(
        children: [
          TableCalendar(
              daysOfWeekHeight: 20.0,
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2022, 1, 1),
              lastDay: DateTime.utc(2024, 12, 31)),
          SizedBox(height: 30.0),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 50.0),
            child: Material(
              elevation: 5.0,
              color: Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimerScreen()),
                  );
                },
                minWidth: 250.0,
                height: 42.0,
                child: Text(
                  'Set Timer',
                  style: TextStyle(
                    color: Color(0xFF3F414E),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

// child: TextButton
//                 (
//
//                 onPressed: (){
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => TimerScreen()));
//               }, child: Text('Set Timer'),),
