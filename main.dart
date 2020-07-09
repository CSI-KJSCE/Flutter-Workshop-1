import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 70, 10, 10),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange[700],
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        //color: Colors.blue,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('Images/id photo.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Align(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerRight,
                              height: 80,
                              width: double.infinity,
                              margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                              child: Text(
                                "Aditya Tawade",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              height: 25,
                              width: double.infinity,
                              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                              child: Text(
                                "CS Undergrad",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                //margin: EdgeInsets.only(top: 70),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff303030),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'About Yourself',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 100,
                      padding: EdgeInsets.only(top: 10),
                      margin: EdgeInsets.all(20),
                      child: Text(
                        'qid9qendiqndpqwidqpiwdqipwndpiquwdnpqiwudnpQWUDNPQWIUN',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
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
