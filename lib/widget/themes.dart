// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mythemes {
  static ThemeData lighterTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.aclonica().fontFamily,
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 4, 40, 89),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );

  static ThemeData DarkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
