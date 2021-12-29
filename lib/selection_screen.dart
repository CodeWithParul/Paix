// import 'package:flutter/material.dart';
// import 'package:paix_app/screens/topics_screens.dart/meditation_screen.dart';
// import 'package:paix_app/screens/topics_screens.dart/increase_happiness_screen.dart';
// import 'package:paix_app/screens/topics_screens.dart/improve_performance_screen.dart';
// import 'package:paix_app/screens/topics_screens.dart/music_screen.dart';
// import 'package:paix_app/screens/topics_screens.dart/personal_growth_screen.dart';
// import 'package:paix_app/screens/topics_screens.dart/reduce_anxiety.dart';
// //import 'package:paix_app/calculate.dart';
//
// class SelectionScreen extends StatefulWidget {
//   @required
//   final String id;
//
//   SelectionScreen(this.id);
//
//   @override
//   _SelectionScreenState createState() => _SelectionScreenState();
// }
//
// class _SelectionScreenState extends State<SelectionScreen> {
//   Widget ans;
//
//   Future<GestureDetector> gesture() async {
//     Future<GestureDetector> _ontap;
//     if (widget.id == 'c1') {
//       _ontap = Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MeditationScreen(),
//         ),
//       );
//     } else if (widget.id == 'c2') {
//       _ontap = Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ImprovePerformanceScreen(),
//         ),
//       );
//     } else if (widget.id == 'c3') {
//       _ontap = Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ReduceAnxietyScreen(),
//         ),
//       );
//     } else if (widget.id == 'c4') {
//       _ontap = Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => MusicScreen(),
//         ),
//       );
//     } else if (widget.id == 'c5') {
//       _ontap = Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => PersonalGrowthScreen(),
//         ),
//       );
//     } else if (widget.id == 'c6') {
//       _ontap = Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => IncreaseHappinessScreen(),
//         ),
//       );
//     }
//     return _ontap;
//   }
//
//   @override
//   Future<Widget> build(BuildContext context) async {
//     Future<GestureDetector> ontapped;
//     ontapped = gesture();
//     return await ontapped;
//   }
// }

//GestureDetector(onTap: () {
//       //  print(_ans);
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => calcscreen(),
//         ),
//       );
//     });

//Widget calcscreen() {
//     if (widget.id == 'c1') {
//       ans = MeditationScreen();
//     } else if (widget.id == 'c2') {
//       ans = ImprovePerformanceScreen();
//     } else if (widget.id == 'c3') {
//       ans = ReduceAnxietyScreen();
//     } else if (widget.id == 'c4') {
//       ans = MusicScreen();
//     } else if (widget.id == 'c5') {
//       ans = PersonalGrowthScreen();
//     } else if (widget.id == 'c6') {
//       ans = IncreaseHappinessScreen();
//     }
//     return ans;
//
