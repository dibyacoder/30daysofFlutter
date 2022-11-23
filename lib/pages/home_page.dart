// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Surprise App")),
      body: Center(
        child: Container(
            child: Text("hello pintu",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ))),
      ),
      drawer: Drawer(),
    );
  }
}
