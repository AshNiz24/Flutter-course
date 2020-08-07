import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          title: Center(child: Text('I am poor')),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Center(
          child: Image(
            image: (NetworkImage(
                'https://img.freepik.com/free-photo/dirty-hands-homeless-poor-man-with-piece-bread-modern-capitalism-society_140289-14.jpg?size=626&ext=jpg')),
          ),
        ),
      ),
    ),
  );
}
