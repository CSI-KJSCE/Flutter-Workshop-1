import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introapp/InfoBox.dart';

BoxDecoration titledecoration = BoxDecoration(
    border: Border(
        bottom: BorderSide(color: Colors.white, style: BorderStyle.solid)));

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xff303030),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 2,
                          spreadRadius: 1,
                          offset: Offset(0, 2))
                    ],
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: 150,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/photo.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Aditya Tawade",
                                style: TextStyle(
                                    fontFamily: "Sans",
                                    fontSize: 35,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Text("CS undergrad",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white)))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
//                height: 140,
                width: 400,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[700],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          spreadRadius: 0.5,
                          offset: Offset(0, 2))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        decoration: titledecoration,
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          "About Me:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
//                              fontFamily: 'Montserrat',
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 140,
                      padding: EdgeInsets.all(20),
//                      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Center(
                        child: Text(
                          "Hi There! this is supposed to be my Bio and write whatever I like",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.orange[800],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          spreadRadius: 0.5,
                          offset: Offset(0, 2))
                    ]),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        decoration: titledecoration,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        margin: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                        child: Text(
                          "Contact Me :",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    InfoBox("1234567890", Icons.phone, Colors.orange[800], 15,
                        50, 380),
                    InfoBox("rohanajm@gmail.com", Icons.email,
                        Colors.orange[800], 15, 50, 380),
                    InfoBox("rohanajm7", FontAwesomeIcons.github,
                        Colors.orange[800], 15, 50, 380),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
