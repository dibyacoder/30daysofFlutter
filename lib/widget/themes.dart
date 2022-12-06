// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class mythemes {
  static ThemeData lighterTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.aclonica().fontFamily,
        canvasColor: creamColor,
        buttonColor: darkbluish,
        accentColor: darkgrey,
        dividerColor: red,
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 4, 40, 89),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.aclonica().fontFamily,
        canvasColor: darkgrey,
        cardColor: Colors.black,
        dividerColor: orange,
        buttonColor: lightbluish,
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 4, 40, 89),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Vx.indigo300),
        ),
      );

  static Color creamColor = Color.fromARGB(255, 255, 251, 234);
  static Color darkbluish = Color(0xff403b58);
  static Color lightbluish = Vx.indigo300;
  static Color darkgrey = Vx.gray900;
  static Color orange = Vx.orange500;
  static Color red = Vx.red800;
}
