import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  final AssetImage image;
  CategoryItem(this.title, this.color, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 86),
        child: Text(
          title,
          textAlign: TextAlign.center,
          //textDirection: TextDirection.,
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          image: image,
          //fit: BoxFit.fill,
        ),
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
