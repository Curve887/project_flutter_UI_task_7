import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle robotoStyle({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      displayLarge: robotoStyle(fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: robotoStyle(fontSize: 24, fontWeight: FontWeight.w600),
      bodyLarge: robotoStyle(fontSize: 16),
      bodyMedium: robotoStyle(fontSize: 14),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: TextTheme(
      displayLarge: robotoStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: robotoStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
      bodyLarge: robotoStyle(fontSize: 16, color: Colors.white),
      bodyMedium: robotoStyle(fontSize: 14, color: Colors.white),
    ),
  );
}
