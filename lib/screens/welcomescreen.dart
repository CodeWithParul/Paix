import 'package:flutter/material.dart';
import 'package:paix_app/components/rounded_button.dart';
import 'package:paix_app/screens/background_screen.dart';
import 'package:paix_app/screens/login_screen.dart';
import 'package:paix_app/screens/registration_screen.dart';

class WelcomeScreens extends StatefulWidget {
  @override
  _WelcomeScreensState createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<WelcomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: AssetImage('assets/images/signup.png'),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/signup.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
              ),
              RoundedButton(
                title: 'Log In',
                colour: Color(0xFF8E97FD),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              RoundedButton(
                title: 'Sign In',
                colour: Color(0xFF8E97FD),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
