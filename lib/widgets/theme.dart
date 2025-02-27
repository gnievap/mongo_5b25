import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData tema1() {
  return ThemeData(
    // color base
    scaffoldBackgroundColor: Colors.black,
    primaryColor: const Color.fromARGB(255, 207, 207, 210),

    // Barra de la App
    appBarTheme:  AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 118, 163, 230),
      titleTextStyle: GoogleFonts.aBeeZee(
        color: Colors.white,
        fontSize: 23,
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
        fontSize: 22,
      ),
      // Texto informativo 2
      bodySmall: TextStyle(
        color: Color.fromARGB(255, 182, 192, 237),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      ),

    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 30,
    ),

  );

}