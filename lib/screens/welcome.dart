import 'package:flutter/material.dart';
import 'package:paix_app/screens/categories_screens.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final User user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        //  print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage('assets/images/getstarted.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
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
                  MaterialPageRoute(builder: (context) => CategoriesScreen()),
                );
              },
              minWidth: 250.0,
              height: 42.0,
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0xFF3F414E),
                ),
              ),
            ),
          ),
          //     );TextButton(
          //   style: TextButton.styleFrom(
          //     alignment: Alignment.bottomCenter,
          //     padding: const EdgeInsets.all(20.0),
          //     primary: Color(0xFFFFFFFF),
          //     textStyle: const TextStyle(
          //       fontSize: 20,
          //       color: Color(0xFFFFFFFF),
          //     ),
          //   ),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => CategoriesScreen()),
          //     );
          //   },
          //   child: Text('Get Started' // strutStyle: ,
          //       ),
        ),
      ],
    );
  }
}
