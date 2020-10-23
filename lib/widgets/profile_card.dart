import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String fullName;


  ProfileCard({this.fullName});

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[card(context)],
    );
  }

  Widget card(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          colorBox(Colors.black),
          SizedBox(height:10.0),
          profilePic(context),
          nameNnumber(),
        ],
      ),
    );
  }

  Widget colorBox(Color color) {
    return Container(
      height: 248.0,
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 3.0,
              offset: Offset(0.0, 10.0),
            )
          ]),
    );
  }

  Widget profilePic(BuildContext context) {
    //double width = MediaQuery.of(context).size.width / 2 - 64.0;
    return Container(
      alignment: Alignment.center,
      child: Icon(
        Icons.account_circle,
        size: 124.0,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget nameNnumber() {
    Text name = Text(
      fullName,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 21.0,
        fontWeight: FontWeight.w400,
      ),
    );


    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 155.0,
      ),
      child: Column(
        children: <Widget>[
          name,
          SizedBox(
            height: 1.0,
          ),

        ],
      ),
    );
  }
}