// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:myfirst_project/models/catalog.dart';
import 'package:myfirst_project/utils/routes.dart';

import '../widget/Item_wideget.dart';
import '../widget/drawer.dart';
import '../widget/themes.dart';
import 'home_widgets/catalogHeader.dart';
import 'home_widgets/catalogList.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool change = false;

  @override
  void initState() {
    super.initState();

    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 3));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = json.decode(catalogJson);
    var productData = decodedData["products"];
    catalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, myRoutes.cartPageRoute),
          backgroundColor: context.theme.buttonColor,
          child: Icon(CupertinoIcons.cart, size: 30),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogHeader(),
              if (catalogModel.items != null && catalogModel.items!.isNotEmpty)
                catalogList().py16().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
      drawer: myDrawer(),
    );
  }
}
