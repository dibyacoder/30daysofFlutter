import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:myfirst_project/widget/themes.dart';

class catalogHeader extends StatelessWidget {
  const catalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(mythemes.darkbluish).make(),
        15.heightBox,
        "Trending products".text.xl2.make(),
      ],
    );
  }
}
