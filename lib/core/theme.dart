import 'package:flutter/material.dart';

final walkmanTheme = ThemeData(
  primaryColor: Colors.grey[800],
  scaffoldBackgroundColor: Colors.black87,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontFamily: 'OCRA',
      color: Colors.white70,
      fontWeight: FontWeight.w400,
      fontSize: 24,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'OCRA',
      color: Colors.white70,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.grey[700],
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      textStyle: const TextStyle(
        fontFamily: 'OCRA',
        fontSize: 14,
      ),
    ),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.orange[700],
    inactiveTrackColor: Colors.grey[600],
    thumbColor: Colors.orange[900],
    overlayColor: Colors.orange.withValues(alpha: 0.2),
  ),
);