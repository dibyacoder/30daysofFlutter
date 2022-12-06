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
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, myRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.orange,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(children: [
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        hintText: "Pintu", labelText: "Enter your name"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "name can't be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Pintu@123",
                        labelText: "Enter Your Password"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "crush name can't be empty";
                      } else if (value.length < 6) {
                        return "crush name should be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    // ignore: sort_child_properties_last
                    child: Icon(Icons.signal_cellular_0_bar_outlined,
                        color: Colors.white),

                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                      backgroundColor: Colors.black, // <-- Button color
                      foregroundColor: Colors.grey, // <-- Splash color
                    ),
                    onPressed: () {
                      moveToHome(context);
                    },
                  )
                ]),
              )
            ]),
          ),
        ));
  }
}
