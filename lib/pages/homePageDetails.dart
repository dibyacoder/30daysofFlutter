import 'package:flutter/cupertino.dart';
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
      backgroundColor: context.canvasColor,
      appBar: AppBar(
          title: "Description"
              .text
              .xl3
              .bold
              .color(context.theme.buttonColor)
              .make(),
          backgroundColor: Colors.transparent),
      bottomNavigationBar: ButtonBar(
        buttonPadding: Vx.mOnly(right: 12),
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}"
              .text
              .color(context.theme.dividerColor)
              .bold
              .xl4
              .make(),
          ElevatedButton(
                  onPressed: () {},
                  child: "Add to Cart"
                      .text
                      .bold
                      .color(context.theme.cardColor)
                      .make(),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
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
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text
                          .color(context.theme.buttonColor)
                          .xl4
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .color(context.theme.buttonColor)
                          .make(),
                      15.heightBox,
                      "Labore sit sea et amet ipsum stet ipsum dolore. ,  sed ipsum lorem clita ipsum,   clita dolore ut kasd ipsum invidunt et lorem et aliquyam. Ipsum vero et ipsum gubergren, gubergren nonumy aliquyam takimata gubergren dolor sit rebum eirmod, dolor magna et tempor dolor est ipsum ipsum elitr sanctus.."
                          .text
                          .textStyle(context.captionStyle)
                          .color(context.theme.accentColor)
                          .make()
                          .p(16),
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
