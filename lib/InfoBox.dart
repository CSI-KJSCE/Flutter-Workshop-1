import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final String text1;
  final icon;
  final Color colour;
  final double fontSize1;
  final double height1;
  final double width1;
  InfoBox(this.text1, this.icon, this.colour, this.fontSize1, this.height1,
      this.width1);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: height1,
        width: width1,
        margin: EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: colour,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      offset: Offset(2.0, 3.0),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      color: Color(0xff000000)),
                  BoxShadow(
                      offset: Offset(-2.0, -3.0),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      color: Color(0xfff0f0f0))
                ]),
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 0.0,
                  fillColor: colour,
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder(),
                )),
            Container(
              height: 50,
              width: 290,
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    //fontFamily: 'Montserrat',
                    fontSize: fontSize1,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
