import 'package:flutter/material.dart';

class ItemListUser extends StatelessWidget {

  String imgName = "photo0.jpg";
  String name = "Amanda Murphy";
  String exp = "Experience: 04 years";
  bool disabled = false;

  ItemListUser({this.imgName = "photo0.jpg", this.name = "Amanda Murphy", this.exp = "Experience: 04 years", this.disabled = false});
  @override
  Widget build(BuildContext context) {

    final userAvatar = Container(
      margin: EdgeInsets.only(left: 16.0),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/img/$imgName"),
        radius: 30.0,
      ),
    );

    final userInfo = Container(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w800,
              color: Colors.black38
            ),
          ),
          Text(
            exp,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black26
            ),
          )
        ],
      ),
    );

    final buttonEmail = Container(
      margin: EdgeInsets.only(right: 20.0),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: (disabled ? Color(0xFFC9C9C9) : Color(0xFFCB4E4A)),
      ),
      child: InkWell(
        onTap: () {},
        child: IconButton(
          icon: Icon(Icons.email),
          color: (disabled ? Colors.black38 : Colors.white),
          onPressed: () {},
        ),
      )
    );

    return Container(
      margin: EdgeInsets.only(bottom: 18.0),
      padding: EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            style: BorderStyle.solid,
            color: Colors.black26
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          userAvatar,
          Expanded(
            child: userInfo ,
          ),
          buttonEmail
        ],
      ),
    );
  }
}