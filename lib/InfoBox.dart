import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final String text1;
  final IconData icon;

  InfoBox(this.text1, this.icon);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 50,
        width: 380,
        margin: EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
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
                ]),
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 0.0,
                  fillColor: Color(0xff000000),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      icon,
                      color: Color(0xffea2893),
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
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
