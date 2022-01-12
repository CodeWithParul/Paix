import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:paix_app/screens/topics_screens.dart/music_screen.dart';
//import 'package:paix_app/screens/topics_screens.dart/personal_growth_screen.dart';
import 'package:paix_app/screens/welcomescreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

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
      home: AnimatedSplashScreen(
        splashIconSize: 150,
        splash: Image.asset(
          'assets/images/starticon.jpg',
          
        ),
        nextScreen: WelcomeScreens(),
        splashTransition: SplashTransition.fadeTransition,
        // duration: 1500,
      ),
    );
  }
}

