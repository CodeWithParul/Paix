import 'package:flutter/material.dart';
import 'package:paix_app/models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Meditation',
    color: Color(0xFF9BA3FF),
    image: AssetImage('assets/images/meditation.png'),
  ),
  Category(
    id: 'c2',
    title: 'Personal Notes',
    color: Color(0xFFFA6E5A),
    image: AssetImage('assets/images/improve.png'),
  ),
  Category(
    id: 'c3',
    title: 'Increase Happiness',
    color: Color(0xFFFEB18F),
    image: AssetImage('assets/images/increasehappiness.png'),
  ),
  Category(
    id: 'c4',
    title: 'Reduce Anxiety',
    color: Color(0xFFFFCF86),
    image: AssetImage('assets/images/reduceanxiety.png'),
  ),
  Category(
    id: 'c5',
    title: 'Personal Growth',
    color: Color(0xFF6CB28E),
    image: AssetImage('assets/images/personalgrowth.png'),
  ),
  Category(
    id: 'c6',
    title: 'Music',
    color: Color(0xFFB0C8ED),
    image: AssetImage('assets/images/music.png'),
  ),
];
