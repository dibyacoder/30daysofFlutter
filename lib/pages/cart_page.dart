import 'package:flutter/material.dart';
import 'package:myfirst_project/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:myfirst_project/models/cart.dart';
import '../widget/themes.dart';

class mycart extends StatelessWidget {
  const mycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.theme.buttonColor).bold.xl2.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl5
              .color(context.theme.accentColor)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying is not supported yet".text.make()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: IconButton(
          icon: Icon(Icons.add, color: context.accentColor),
          color: context.accentColor,
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          color: context.accentColor,
          onPressed: () {},
        ),
        title: _cart.items[index].name.text
            .color(context.theme.accentColor)
            .makeCentered(),
      ),
    );
  }
}
