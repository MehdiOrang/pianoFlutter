import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(Color color,int keyNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          return player.play('note$keyNumber.wav');
        },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green.shade700,4),
              buildKey(Colors.teal,5),
              buildKey(Colors.blue,6),
              buildKey(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
