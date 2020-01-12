import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('$soundNumber'),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orangeAccent, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.blue, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.yellow, soundNumber: 6),
              buildKey(color: Colors.purpleAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
