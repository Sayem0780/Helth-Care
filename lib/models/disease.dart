import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Disease {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> instructions;
  final List<String> advice;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlucoseFree;
  final bool isLactoseFree;
  final bool ischolesterol;
  final bool isHypertension;

  const Disease({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.instructions,
    required this.advice,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlucoseFree,
    required this.isLactoseFree,
    required this.ischolesterol,
    required this.isHypertension,
  });
}
