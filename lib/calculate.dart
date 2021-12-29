import 'package:flutter/widgets.dart';
import 'package:paix_app/screens/topics_screens.dart/improve_performance_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/increase_happiness_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/meditation_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/music_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/personal_growth_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/reduce_anxiety.dart';

class Calculate {
  final String idd;

  Calculate({this.idd});

  Widget _ans;
  Widget calculatescreen() {
    if (idd == 'c1') {
      _ans = MeditationScreen();
    } else if (idd == 'c2') {
      _ans = ImprovePerformanceScreen();
    } else if (idd == 'c3') {
      _ans = ReduceAnxietyScreen();
    } else if (idd == 'c4') {
      _ans = MusicScreen();
    } else if (idd == 'c5') {
      _ans = PersonalGrowthScreen();
    } else if (idd == 'c6') {
      _ans = IncreaseHappinessScreen();
    }
    return _ans;
  }
}
