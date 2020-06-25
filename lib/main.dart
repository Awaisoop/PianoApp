import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,No: 1),
              buildKey(color: Colors.indigo,No: 2),
              buildKey(color: Colors.grey,No: 3),
              buildKey(color: Colors.orange,No: 4),
              buildKey(color: Colors.green,No: 5),
              buildKey(color: Colors.blueAccent,No: 6),
              buildKey(color: Colors.amberAccent,No: 7),

            ],
          ),
        ),
      ),
    );
  }


  void player(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color color, int No}) => Expanded (
      child: FlatButton(
        color: color,
        onPressed:()
      {
        player(No);
      }, ),
    );

}
