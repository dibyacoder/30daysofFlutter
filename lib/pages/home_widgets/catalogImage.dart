import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:myfirst_project/widget/themes.dart';

class catalogImage extends StatelessWidget {
  final String image;
  const catalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .color(mythemes.creamColor)
        .make()
        .p16()
        .w32(context);
  }
}
