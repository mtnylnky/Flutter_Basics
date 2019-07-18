import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  _MyAppState createState()=>_MyAppState();
}
class _MyAppState extends State<MyApp>{
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=>HomePage(),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.cyan,
                    Colors.blue[800],
                  ]
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Flutter",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48.0,
                        fontFamily: 'Rancho',
                        color: Colors.white
                    ),
                  ),
                ],
              ),
              new  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(left: 75.0),
                    child: Image.asset(
                      'assets/images/calculator.png',
                      height: 256.0,
                      width: 256.0,
                    ),
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 5.0,top: 10.0),
                    child: Text(
                      "Calculator",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 48.0,
                          fontFamily: 'Rancho',
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}