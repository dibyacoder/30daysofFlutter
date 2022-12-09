import 'package:flutter/material.dart';
import 'package:myfirst_project/pages/homePageDetails.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
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
                _AddToCart(
                  catalog: catalog,
                  key: null,
                )
              ],
            )
          ],
        ))
      ],
    )).color(context.theme.cardColor).rounded.square(150).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  __AddToCartState createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = isAdded.toggle();
        final _catalog = catalogModel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {});
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isAdded ? Icon(Icons.done) : "Add to cart".text.make(),
    );
  }
}
