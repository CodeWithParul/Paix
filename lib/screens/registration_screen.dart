import 'package:flutter/material.dart';
import 'package:paix_app/components/rounded_button.dart';
import 'package:paix_app/constants.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage('assets/images/register.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       alignment: Alignment.center,
              //       image: AssetImage('assets/images/create.png'),
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your e-mail'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                title: 'Register',
                colour: Color(0xFF8E97FD),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
