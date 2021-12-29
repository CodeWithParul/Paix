import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paix_app/screens/topics_screens.dart/improve_performance_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/increase_happiness_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/meditation_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/music_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/personal_growth_screen.dart';
import 'package:paix_app/screens/topics_screens.dart/reduce_anxiety.dart';
//import 'package:paix_app/models/category_backend.dart';
//import 'package:paix_app/selection_screen.dart';

class CategoryItem extends StatefulWidget {
  final String id;
  final Color color;
  final AssetImage image;
  final String title;

  CategoryItem(this.title, this.id, this.color, this.image);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  void screen() {
    if (widget.id == 'c1')
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MeditationScreen(),
          ),
        );
      });
    else if (widget.id == 'c2') {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImprovePerformanceScreen(),
          ),
        );
      });
    } else if (widget.id == 'c3') {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReduceAnxietyScreen(),
          ),
        );
      });
    } else if (widget.id == 'c4') {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MusicScreen(),
          ),
        );
      });
    } else if (widget.id == 'c5') {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonalGrowthScreen(),
          ),
        );
      });
    } else if (widget.id == 'c6') {
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IncreaseHappinessScreen(),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
//    SelectionScreen _tapped = SelectionScreen(widget.id);
    return GestureDetector(
      onTap: screen,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.center,
            image: widget.image,
            fit: BoxFit.fill,
          ),
          gradient: LinearGradient(
            colors: [
              widget.color.withOpacity(0.7),
              widget.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

//() {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => SelectionScreen(id),
//           ),
//         );
//       },

//void selectCategory(BuildContext ctx) {
//     Navigator.of(ctx).pushNamed(
//       '/category-backend',
//       arguments: {
//         'id': widget.id,
//         'title': widget.title,
//       },
//     );
//   }
