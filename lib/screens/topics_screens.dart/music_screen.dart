import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:paix_app/screens/topics_screens.dart/music_screen_material/Musics.dart';
import 'package:paix_app/screens/topics_screens.dart/music_screen_material/custom_list_view.dart';
//import 'package:paix_app/screens/topics_screens.dart/music_screen_material/detailed_page.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final player = AudioCache(fixedPlayer: AudioPlayer());
  List musics;
  bool isPlaying = false;
  int number;

  // void check(int num, bool isPlaying){
  //   final player = AudioCache(fixedPlayer: AudioPlayer());
  //   if(isPlaying )
  //     player.fixedPlayer.pause();
  //   else
  //     player.fixedPlayer.resume();
  //
  //
  // }

  void playSound(int soundnumber) {
    if (isPlaying == true) {
      stopSound();
    } else {
      setState(() {
        player.play('sound/audio$soundnumber.mpeg');
        isPlaying = true;
      });
    }
  }

  void stopSound() {
    setState(() {
      player.fixedPlayer.stop();
      isPlaying = false;
    });
  }

  @override
  void initState() {
    musics = getList();
    super.initState();
  }

  List getList() {
    return [
      Musics(
        title: "Relaxing in the forest",
        singer: "Unknown",
        id: 1,
        image: AssetImage("assets/images/relaxing.jpg"),
      ),
      Musics(
        title: "Flow",
        singer: "Unknown",
        id: 2,
        image: AssetImage("assets/images/flow.jpg"),
      ),
      Musics(
        title: "Dawn",
        singer: "Unknown",
        id: 3,
        image: AssetImage("assets/images/dawn.jpg"),
      ),
      Musics(
        title: "Desert Fantasy",
        singer: "Unknown",
        id: 5,
        image: AssetImage("assets/images/desert_fantasy.jpg"),
      ),
      Musics(
        title: "Soothing",
        singer: "Unknown",
        id: 6,
        image: AssetImage("assets/images/soothing.jpg"),
      ),
      Musics(
        title: "Calm Rain",
        singer: "Unknown",
        id: 4,
        image: AssetImage("assets/images/calm_rain.jpg"),
      ),
      Musics(
        title: "Stressed out",
        singer: "Unknown",
        id: 7,
        image: AssetImage("assets/images/relaxing.jpg"),
      ),
      Musics(
        title: "Baby Sleep",
        singer: "Unknown",
        id: 8,
        image: AssetImage("assets/images/baby_sleep.jpg"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6380B6),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF193279),
        title: Center(
          child: Text(
            "Recommended Playlist",
            style: TextStyle(color: Colors.white70, fontSize: 20.0),
          ),
        ),
      ),
      body: Column(children: [
        //divided into two parts
        //one which consists of list of songs
        Expanded(
          child: ListView.builder(
              itemCount: getList().length,
              itemBuilder: (context, index) => customListView(
                    onTap: () {
                      playSound(index + 1);
                    },
                    title: musics[index].title,
                    singer: musics[index].singer,
                    image: musics[index].image,
                  )),
        ),
      ]),
    );
  }
}
//  Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) =>
//                                     DetailPage(mMusic: musics[index])),
//                           );
