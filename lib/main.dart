import 'package:flutter/material.dart';
//import 'package:paix_app/models/category_backend.dart';
import 'package:paix_app/screens/welcomescreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // Ensure that Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  //
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
      home: WelcomeScreens(),
      // routes: {
      //   '/': (ctx) => WelcomeScreens(),
      //   CategoryBackend.routeName: (ctx) => CategoryBackend(),
      // },
    );
  }
}
//0xFFFFEDF8
//WelcomeScreen(),
