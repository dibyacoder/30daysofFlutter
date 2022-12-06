import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widget/themes.dart';

class mycart extends StatelessWidget {
  const mycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mythemes.creamColor,
      appBar: AppBar(
        backgroundColor: mythemes.darkbluish,
        title: "Cart".text.bold.xl2.make(),
      ),
    );
  }
}
