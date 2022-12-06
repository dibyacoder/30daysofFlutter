// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:myfirst_project/pages/cart_page.dart';
import 'package:myfirst_project/pages/home_page.dart';
import 'package:myfirst_project/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirst_project/utils/routes.dart';
import '../widget/themes.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: mythemes.lighterTheme(context),
      darkTheme: mythemes.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => login_page(),
        myRoutes.loginRoute: (context) => login_page(),
        myRoutes.homeRoute: (context) => homepage(),
        myRoutes.cartPageRoute: (context) => mycart(),
      },
    );
  }
}
