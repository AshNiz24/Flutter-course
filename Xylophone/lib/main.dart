import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Expanded button(Color color, int num) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(num);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button(Colors.red, 1),
                button(Colors.orange, 2),
                button(Colors.yellow, 3),
                button(Colors.green, 4),
                button(Colors.blue, 5),
                button(Colors.indigo, 6),
                button(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void playsound(int notenum) {
  final player = AudioCache();
  player.play('note$notenum.wav');
}
