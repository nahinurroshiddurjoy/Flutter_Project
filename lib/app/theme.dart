import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF2563EB);
  static const Color background = Color(0xFFF8FAFC);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Color(0xFF64748B);

  static const double extrasmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double extralarge = 32.0;

  static const double radiussmall = 8.0;
  static const double radiusmedium = 12.0;
  static const double radiuslarge = 20.0;

  static final BoxDecoration boxDecoration = BoxDecoration(
    color: white,
    borderRadius: BorderRadius.circular(radiusmedium),
  );

  static const double headinglarge = 32.0;
  static const double headingmedium = 24.0;
  static const double headingsmall = 20.0;

  static const double bodylarge = 16.0;
  static const double bodymedium = 14.0;
  static const double bodysmall = 12.0;

  static ThemeData get lightTheme {
    return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
  );
  
  }
}
