// ignore_for_file: prefer_const_constructors
import 'dart:ffi';
import 'dart:convert';
import 'dart:ui';
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
      appBar: AppBar(title: Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: (catalogModel.items != null && catalogModel.items!.isNotEmpty)
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 12),
                    itemCount: catalogModel.items!.length,
                    itemBuilder: (context, index) {
                      final item = catalogModel.items![index];
                      return Card(
                          clipBehavior: Clip.antiAlias,
                          shadowColor: Color.fromARGB(255, 101, 101, 185),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: GridTile(
                              header: Container(
                                child: Text(item.name,
                                    style: TextStyle(color: Colors.white)),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 19, 79, 122),
                                ),
                              ),
                              child: Image.network(item.image),
                              footer: Container(
                                child: Text(item.price.toString(),
                                    style: TextStyle(color: Colors.white)),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ));
                    }),
              )
            : Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 23, 42, 161),
                ),
              ),
      ),
      drawer: myDrawer(),
    );
  }
}
