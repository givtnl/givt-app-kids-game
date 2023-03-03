import 'package:flutter/material.dart';

enum ImpactGoals {
  helpingHaven(
    title: 'Helping Haven',
    underscored_title: 'helping_haven',
    background_color: Color(0xFFFFEFE9),
  ),
  critterland(
    title: 'Critterland',
    underscored_title: 'critterland',
    background_color: Color(0xFFEFF8FD),
  ),
  ecoVerse(
    title: 'EcoVerse',
    underscored_title: 'ecoverse',
    background_color: Color(0xFFD6EDD8),
  );

  const ImpactGoals({
    required this.title,
    required this.underscored_title,
    required this.background_color,
  });

  final String title;
  final String underscored_title;
  final Color background_color;
}
