// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widget/themes.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: mythemes.lightbluish),
              accountName: "Dibya Ranjan Sahu".text.black.bold.make(),
              accountEmail: "dibyaranja1029@gmail.com".text.black.make(),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 10, 56, 91),
                backgroundImage: AssetImage("assets/images/anime.png"),
              ),
            )),
        ListTile(
          leading: Icon(
            CupertinoIcons.house,
            color: context.accentColor,
          ),
          title: Text(
            "Home",
            textScaleFactor: 1.2,
            style: TextStyle(color: context.accentColor),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.plus_rectangle_fill_on_rectangle_fill,
            color: context.accentColor,
          ),
          title: Text(
            "Add Account",
            textScaleFactor: 1.2,
            style: TextStyle(color: context.accentColor),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.heart_fill,
            color: context.accentColor,
          ),
          title: Text(
            "Support Us",
            textScaleFactor: 1.2,
            style: TextStyle(color: context.accentColor),
          ),
        )
      ],
    ));
  }
}
