import 'package:flutter/material.dart';
import 'dart:math';

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(5) + 1;
      rightDiceNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EDC9),
      appBar: AppBar(
        title: Center(
          child: Text('Dicee'),
        ),
        backgroundColor: Color(0xFFCCD5AE),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Image(
                    image: AssetImage('assets/images/dice$rightDiceNumber.png'),
                    //dice$leftDiceNumber
                  ),
                  // padding: const EdgeInsets.all(16.0),
                  onPressed: () {
                    changeDiceFace();
                  },
                  // onLongPress: () {},

                  //child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image(
                    image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                    //dice$rightDiceNumber
                  ),
                  onPressed: () {
                    changeDiceFace();
                  },
                  //style: flatButtonStyle,
                  // onLongPress: () {},
                  //  padding: const EdgeInsets.all(16.0),

                  //   child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
