import 'package:flutter/material.dart';
import 'package:paix_app/screens/topics_screens.dart/dicepage.dart';
import 'package:paix_app/screens/topics_screens.dart/xylo.dart';

class ReduceAnxietyScreen extends StatelessWidget {
  final double h = 180.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffdcd187),
        title: Center(child: Text('Reduce Anxiety')),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topRight, colors: [
            Color(0xff6a4f4b).withOpacity(0.8),
            Color(0xffb39893).withOpacity(.6),
          ])),
          alignment: Alignment.center,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DiceGame(),
                    ),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                  ),
                  alignment: Alignment.center,
                  height: h,
                  width: h * 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/dicebng.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => XylophoneApp(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: h,
                  width: h * 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/xylobng.jpeg'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
