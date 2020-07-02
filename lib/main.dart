import 'package:flutter/material.dart';
import 'package:introapp/InfoBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
        ),
        body: Column(
          children: <Widget>[
            Align(
               alignment: Alignment.topCenter,
               child: Container(
                 width: double.infinity,
                 height: 150.0,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   
                 ),
                 alignment: Alignment.center,
                 padding: EdgeInsets.all(0),
                 child: Stack(
                   children: <Widget>[
                     Align(
                       alignment: Alignment.topCenter,
                       child: Container(
                         width: double.infinity,
                         height: 100,
                         decoration: BoxDecoration(
                          
                           gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           colors: [Colors.orange[900], Colors.yellow[600]]),
                           
                         ),

                       ),
                     ),
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: Container(
                         height: 110,
                         width: 110,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                            gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           colors: [ Colors.yellow[600],Colors.orange[900]]),
                          
                         ),
                       ),
                     ),
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: Container(
                         height: 100,
                         width: 100,
                         margin: EdgeInsets.only(bottom:5),
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           image: DecorationImage(
                             image: AssetImage("assets/photo.jpg"),
                             fit: BoxFit.fill,
                           ),
                          
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
            
             Align(
               alignment: Alignment.center,
               child: Text("Aditya Tawade",
               style: TextStyle(
                            
                            
                            fontSize: 35,
                            
                            color: Colors.orange[700]),
               ),
             ),
             Align(
               alignment: Alignment.center,
               child:Container(
               height: 140,
               width:400,
               margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey[700] ),
               child: Column(
                 children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                      width: 50,
                      height: 30,
                      margin: EdgeInsets.only(top:5,left:10),
                      child: Text("Bio:",
                      style: TextStyle(
                            //fontFamily: 'Montserrat',
                            fontSize: 25,
                            color: Colors.white),
                      
                      ),
                    ),

                    ),
                    
                         Container(
                      width: double.infinity,
                      height: 100,
                      margin: EdgeInsets.only(top:5,left:10,right:10),
                      child: Text("Hi There! this is supposed to be my Bio and write whatever I like",
                      style: TextStyle(
                            
                            fontSize: 20,
                            color: Colors.white),
                      
                      ),
                    ),
                    
                 ],
               ),
             ), 
             ),
             Align(
               alignment: Alignment.center,
               child: Container(
                 height:210,
                 width:400,
                  margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.orange[700] ),
                    child: Column(
                      children: <Widget>[
                        Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                      width: 150,
                      height: 30,
                      margin: EdgeInsets.only(top:5,left:10),
                      child: Text("Contacts:",
                      style: TextStyle(
                            
                            fontSize: 20,
                            color: Colors.white),
                      
                      ),
                    ),

                    ),
                    InfoBox("1234567890", Icons.phone,Colors.orange[900],15,50,380),
            
            InfoBox("rohanajm@gmail.com", Icons.email,Colors.orange[900],15,50,380),
            InfoBox("rohanajm@gmail.com", Icons.email,Colors.orange[900],15,50,380),
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












