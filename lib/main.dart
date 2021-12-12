import 'package:flutter/material.dart';
import 'package:paix_app/screens/welcome.dart';
//import 'package:paix_app/screens/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAIX',
      theme: ThemeData(
        fontFamily: 'Source Sans Pro',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              bodyText2: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}
//0xFFFFEDF8
//WelcomeScreen(),
