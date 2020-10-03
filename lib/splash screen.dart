import 'dart:async';
import 'HomeScreen.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () =>  Navigator.pushReplacement(context,
      new MaterialPageRoute(builder: (context) => HomeScreen()),
    )
    );
  }
  Widget build(BuildContext context) {
    return new Scaffold(
        body:
        new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(color: Colors.black),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('assets/icons/splash.png')),
                Padding(padding: EdgeInsets.only(top: 40.0)),
                Text(" Find  .  Ride  .  Visit ",style: TextStyle(color: Colors.white,fontSize: 25.0),)

              ],
            )
          ],
        )
    );
  }
