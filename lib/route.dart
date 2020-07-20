import 'package:flutter/material.dart';
import 'InfoBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xffea2893),
          icon: Icon(Icons.account_circle),
          label: Text('INFO'),
          onPressed: () {
            Navigator.pop(context);
          }),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 250,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff9700b2), Color(0xff4f2ac4)]),
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.infinity,
                  decoration: titledecoration,
                  margin: EdgeInsets.all(5),
                  child: Text(
                    "Contact Me :",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InfoBox("1234567890", Icons.phone),
              InfoBox("rohanajm@gmail.com", Icons.email),
              InfoBox("rohanajm7", FontAwesomeIcons.github),
            ],
          ),
        ),
      ),
    );
  }
}
