// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myfirst_project/utils/routes.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.orange,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/images/love.png", fit: BoxFit.cover),
            SizedBox(
              height: 50,
            ),
            Text("Welcome $name bro",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(children: [
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: "You", labelText: "Enter your name"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        hintText: "YOUR's",
                        labelText: "Enter Your crush name")),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: Text(
                      "Calculate"), //Icon(Icons.camera, color: Colors.white),

                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(40),
                    backgroundColor: Colors.black, // <-- Button color
                    foregroundColor: Colors.grey, // <-- Splash color
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, myRoutes.homeRoute);
                  },
                )
              ]),
            )
          ]),
        ));
  }
}
