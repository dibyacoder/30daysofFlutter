import 'package:flutter/material.dart';

import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:myfirst_project/widget/themes.dart';

class homeDetails extends StatelessWidget {
  final Item catalog;
  const homeDetails({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mythemes.creamColor,
      appBar: AppBar(
        title: Text("Description"),
      ),
      bottomNavigationBar: ButtonBar(
        buttonPadding: Vx.mOnly(right: 12),
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.bold.xl4.red900.make(),
          ElevatedButton(
                  onPressed: () {},
                  child: "Buy Now".text.italic.make(),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(mythemes.darkbluish),
                      shape: MaterialStateProperty.all(StadiumBorder())))
              .wh(150, 60)
        ],
      ).p8(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image.padLeft(80)).h32(context)),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold.make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      15.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ).p20(),
      ),
    );
  }
}
