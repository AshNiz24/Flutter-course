import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPg(),
      ),
    );

class BallPg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask ME Anything!',
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, letterSpacing: 2.0),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballNum.png')),
      ),
    );
  }
}
