import 'package:flutter/material.dart';
import 'package:paix_app/models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    title: 'Meditation',
    id: 'c1',
    color: Color(0xFF9BA3FF),
    image: AssetImage('assets/images/six.png'),
  ),
  Category(
    title: 'Improve Performance',
    id: 'c2',
    color: Color(0xFFFA6E5A),
    image: AssetImage('assets/images/one.png'),
  ),
  Category(
    title: 'Reduce Anxiety',
    id: 'c3',
    color: Color(0xFFFFCF86),
    image: AssetImage('assets/images/five.png'),
  ),
  Category(
    title: 'Music',
    id: 'c4',
    color: Color(0xFFB0C8ED),
    image: AssetImage('assets/images/three.png'),
  ),
  Category(
    title: 'Personal Growth',
    id: 'c5',
    color: Color(0xFF6CB28E),
    image: AssetImage('assets/images/two.png'),
  ),
  Category(
    title: 'Increase Happiness',
    id: 'c6',
    color: Color(0xFFFEB18F),
    image: AssetImage('assets/images/four.png'),
  ),
];
