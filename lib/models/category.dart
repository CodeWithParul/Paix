import 'package:flutter/material.dart';

class Category {
  @required
  final String id;
  @required
  final String title;
  @required
  final Color color;
  @required
  final AssetImage image;

  const Category({
    @required this.id,
    @required this.title,
    @required this.color,
    @required this.image,
  });
}
