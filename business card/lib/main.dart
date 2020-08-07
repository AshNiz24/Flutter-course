import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/AshImg.jpg'),
              ),
              Text(
                'Ashna Nizam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  letterSpacing: 2.5,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                ),
              ),
              Text(
                'PHOTOSHOP DESIGNER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                width: 250.0,
                height: 15.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                color: Colors.teal[50],
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                    size: 25,
                  ),
                  title: Text(
                    '+91 987 654 3210',
                    style: TextStyle(color: Colors.teal[900], fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  color: Colors.teal[50],
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ashnizaster@gmail.com',
                      style: TextStyle(color: Colors.teal[900], fontSize: 20.0),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
