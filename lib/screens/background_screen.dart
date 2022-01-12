import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  BackgroundImage({@required this.image});
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          Color(0xFFFFFFFF),
          Color(0xFFEEE8F8),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      //blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
