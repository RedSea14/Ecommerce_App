import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 55, 50, 50),
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey[900]!,
    secondary: const Color.fromARGB(255, 193, 189, 189),
  ),
);
ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Colors.white,
    secondary: Colors.black,
  ),
);
