import 'package:flutter/material.dart';
import 'package:paix_app/screens/topics_screens.dart/meditation_screen_material/calender_screen.dart';

class MeditationScreen extends StatelessWidget {
  final double h = 180.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEBEA),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Meditation \n'
                  'and Yoga',
                  style: TextStyle(
                    color: Color(0xff008890),
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Find inner peace with meditation for a healthier life',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 425,
                width: 487,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/meditation-il.png',
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CalenderScreen()));
                },
                child: Center(
                  child: Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Color(0xffF16469),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
