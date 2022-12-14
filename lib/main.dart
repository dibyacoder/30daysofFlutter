// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:myfirst_project/pages/home_page.dart';
import 'package:myfirst_project/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lacquer().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => login_page(),
        "/login_page": (context) => login_page(),
        "/home": (context) => homepage(),
      },
    );
  }
}
