import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 30.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/menu_bg.png"),
          fit: BoxFit.fill
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}