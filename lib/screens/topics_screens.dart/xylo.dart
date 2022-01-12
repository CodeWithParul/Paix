import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundnumber) {
    final player = AudioCache();
    //player.load('assets/audio/note$soundnumber.wav');
    player.play('audio/note$soundnumber.wav');
  }

//AudioPlayer();
  Expanded buildKey({Color color, int soundnumber}) {
    return Expanded(
      child: TextButton(
        child: Icon(
          Icons.audiotrack,
          color: Color(0xFFfec5bb),
          size: 25.0,
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Xylophone'),
          ),
          backgroundColor: Color(0xFFfec89a),
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Color(0xFFffd7ba), soundnumber: 1),
              buildKey(color: Color(0xFFffe5d9), soundnumber: 2),
              buildKey(color: Color(0xFFece4db), soundnumber: 3),
              buildKey(color: Color(0xFFd8e2dc), soundnumber: 4),
              buildKey(color: Color(0xFFe8e8e4), soundnumber: 5),
              buildKey(color: Color(0xFFf8edeb), soundnumber: 6),
              buildKey(color: Color(0xFFfae1dd), soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
