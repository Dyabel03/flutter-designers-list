import 'package:flutter/material.dart';
import 'item_list_user.dart';

class ListUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 68.0
      ),
      child: ListView(
        children: <Widget>[
          ItemListUser(
            name: "Lorena Lopez",
            disabled: true,
            exp: "Experience: 08 years",
            imgName: "photo0.jpg",
          ),
          ItemListUser(
            name: "Camila Castro",
            disabled: false,
            exp: "Experience: 02 years",
            imgName: "photo1.jpg"),
          ItemListUser(
            name: "Son Goku",
            disabled: false,
            exp: "Experience: 01 years",
            imgName: "photo2.png"),
          ItemListUser(
            name: "Julian Zapataa",
            disabled: true,
            exp: "Experience: 09 years",
            imgName: "photo3.jpg",
          ),
          ItemListUser(
            name: "El Bartoa",
            disabled: true,
            exp: "Experience: 10 years",
            imgName: "photo4.jpg",
          ),
          ItemListUser(),
        ],
      ),
    );
  }
}