import 'package:flutter/material.dart';
import 'package:myfirst_project/pages/homePageDetails.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import 'package:myfirst_project/utils/routes.dart';
import 'catalogImage.dart';
import 'package:myfirst_project/widget/themes.dart';

class catalogList extends StatelessWidget {
  const catalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogModel.items!.length,
      itemBuilder: ((context, index) {
        final catalog = catalogModel.items![index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetails(catalog: catalog))),
            child: catalogItems(catalog: catalog));
      }),
    );
  }
}

class catalogItems extends StatelessWidget {
  final Item catalog;
  const catalogItems({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: catalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.color(context.theme.accentColor).xl.bold.make(),
            catalog.desc.text
                .color(context.theme.accentColor)
                .textStyle(context.captionStyle)
                .make(),
            15.heightBox,
            ButtonBar(
              buttonPadding: Vx.mOnly(right: 6),
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}"
                    .text
                    .color(context.theme.dividerColor)
                    .bold
                    .xl2
                    .make(),
                ElevatedButton(
                    onPressed: () {},
                    child: "Add to Cart"
                        .text
                        .color(context.theme.canvasColor)
                        .bold
                        .make(),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor),
                        shape: MaterialStateProperty.all(StadiumBorder())))
              ],
            )
          ],
        ))
      ],
    )).color(context.theme.cardColor).rounded.square(150).make().py16();
  }
}
