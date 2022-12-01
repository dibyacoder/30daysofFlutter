// ignore_for_file: prefer_const_constructors
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myfirst_project/utils/routes.dart';
import 'package:myfirst_project/models/catalog.dart';

import '../widget/Item_wideget.dart';
import '../widget/drawer.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(50, (index) => catalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(title: Text("Surprise App")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return Itemwidget(
                item: dummylist[index],
              );
            }),
      ),
      drawer: myDrawer(),
    );
  }
}
