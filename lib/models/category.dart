import 'package:flutter/material.dart';

class Category {
  @required
  final String id;
  @required
  final Color color;
  @required
  final AssetImage image;
  @required
  final String title;

  const Category({
    @required this.title,
    @required this.id,
    @required this.color,
    @required this.image,
  });
}
