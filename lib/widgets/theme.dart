import 'package:flutter/material.dart';

ThemeData tema1() {
  return ThemeData(
    // color base
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Color.fromARGB(255, 207, 207, 210),

    // Barra de la App
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 161, 157, 157),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    ),

    textTheme: const TextTheme(
      // Títulos pequeños
      headlineSmall: TextStyle(
        color: Color.fromARGB(255, 118, 163, 230),
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      // Texto informativo 1
      bodyMedium: TextStyle(
        color: Color.fromARGB(255, 164, 174, 219),
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      // Texto informativo 2
      bodySmall: TextStyle(
        color: Color.fromARGB(255, 164, 174, 219),
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
    ),


  );

}