import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int key) {
    final player = AudioCache();
    player.play('note$key.wav');
  }

  Expanded buildKey({int key, Color color}) => Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {
              playNote(key);
            }),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(key: 1, color: Colors.red),
              buildKey(key: 2, color: Colors.orange),
              buildKey(key: 3, color: Colors.yellow),
              buildKey(key: 4, color: Colors.green),
              buildKey(key: 5, color: Colors.teal),
              buildKey(key: 6, color: Colors.purple),
              buildKey(key: 7, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
