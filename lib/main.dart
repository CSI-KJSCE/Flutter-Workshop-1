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
      theme: ThemeData(fontFamily:'Proxima Nova'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                decoration: BoxDecoration(
                    // color: Color(0xff303030),
                    //gradient: LinearGradient(colors:[Color(0xffbdc3c7),Color(0xff2c3e50)]),
                    //color: Color.fromRGBO(255, 0, 0, 1),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xfff4624a), Color(0xffea2893)]),
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
                                    fontFamily: "Proxima Nova",
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Text("CS undergrad",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
//                height: 140,
                width: 400,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    // color: Colors.grey[700],
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffea2893), Color(0xff9700b2)]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          spreadRadius: 1,
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
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "About Me:",
                          textAlign: TextAlign.center,
                          style: TextStyle(
//                              fontFamily: 'Montserrat',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 140,
                      padding: EdgeInsets.all(20),
//                      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Align(
                        alignment: Alignment.topCenter,
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
              height: 0,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                margin:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    // color: Colors.orange[700],
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff9700b2), Color(0xff4f2ac4)]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                          spreadRadius: 1,
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
                            fontWeight: FontWeight.bold
                          ),
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
          ],
        ),
      ),
    );
  }
}
