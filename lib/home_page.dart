import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Surprise App")),
      body: Center(
        child: Container(
          child: Text("I love You Mama"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
