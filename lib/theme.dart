import 'package:flutter/material.dart';

class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: Colors.black54),
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(color: Colors.teal),
  );
}
