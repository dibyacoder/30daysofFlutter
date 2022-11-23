// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myfirst_project/utils/routes.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lightBlueAccent,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset("assets/images/love.png", fit: BoxFit.cover),
            SizedBox(
              height: 50,
            ),
            Text("Welcome bro",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
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
                        hintText: "You", labelText: "Enter your name")),
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
                  child: Text("Calculate how much she likes you"),
                  style: TextButton.styleFrom(minimumSize: Size(50, 40)),
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
