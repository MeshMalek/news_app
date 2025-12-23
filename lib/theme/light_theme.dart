import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: .light,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
  colorScheme: ColorScheme.light(
    surface: Colors.grey[300]!,
    primary: Colors.grey[200]!,
    secondary: Colors.grey[300]!,
  ),
);
