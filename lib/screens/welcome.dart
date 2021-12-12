import 'package:flutter/material.dart';
import 'package:paix_app/screens/categories_screens.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage('assets/images/welcome.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 50.0),
          child: Material(
            elevation: 5.0,
            color: Colors.blue.shade900,
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
                  color: Colors.black54,
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
