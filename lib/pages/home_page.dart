// ignore_for_file: prefer_const_constructors
import 'dart:ffi';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirst_project/utils/routes.dart';
import 'package:myfirst_project/models/catalog.dart';

import '../widget/Item_wideget.dart';
import '../widget/drawer.dart';
import 'package:flutter/services.dart';

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
    await Future.delayed(Duration(seconds: 5));
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
      appBar: AppBar(title: Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: (catalogModel.items != null && catalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: catalogModel.items.length,
                itemBuilder: (context, index) {
                  return Itemwidget(
                    item: catalogModel.items[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
      ),
      drawer: myDrawer(),
    );
  }
}
