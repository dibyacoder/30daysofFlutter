// ignore_for_file: prefer_const_constructors
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myfirst_project/utils/routes.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Surprise App")),
      body: Center(
        child: InkWell(
          onTap: () async {
            setState(() {
              change = true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, myRoutes.loginRoute);
          },
          child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 40,
              width: change ? 100 : 200,
              alignment: Alignment.center,
              child: change
                  ? Icon(Icons.done)
                  : Text("Hello MC",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
              decoration: BoxDecoration(
                  color: change ? Colors.yellow : Colors.green,
                  borderRadius: BorderRadius.circular(40))),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
