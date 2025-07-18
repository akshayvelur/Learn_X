import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.teal,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(color: const Color.fromARGB(255, 255, 255, 255),titleTextStyle: TextStyle(color: (const Color.fromARGB(255, 0, 0, 0)))),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black87),
    bodySmall: TextStyle(color: Color.fromARGB(137, 0, 0, 0)),
    titleLarge: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
    labelLarge: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    
  ),iconTheme: IconThemeData(color: const Color.fromARGB(255, 0, 0, 0)),
  iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor:WidgetStatePropertyAll(Colors.black))));
  

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.teal,
    
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(color: Colors.black87,titleTextStyle: TextStyle(color: (Colors.white))),
    textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color:  Colors.white),
    labelLarge: TextStyle(color: Colors.white),
  ),
  
  
iconTheme: IconThemeData(color: Colors.white), 
iconButtonTheme: IconButtonThemeData(style: ButtonStyle(iconColor:WidgetStatePropertyAll(Colors.white))));}


