import 'dart:async';

import 'package:flutter/material.dart';
import 'package:review_buku/main_screen.dart';

class SplashScreen extends State<SplaschScreenPage>{

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/coverbook.png',
              width: 200.0,
              height: 200.0,
            ),
            Text(
              'Review Buku',
              style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.blue,),
            ),
          ],
        ),
      ),
    );
  }
}

class SplaschScreenPage extends StatefulWidget{
  SplashScreen createState() => SplashScreen();
}

