import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int note){
    final audioPlayer = AudioPlayer();
    audioPlayer.play(AssetSource('assets_note$note.wav'));
  }

    Expanded buildKey(int note, Color color) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color ),

          onPressed: () async {
            playSound(note);
          },
          child: const Text(''),
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
              buildKey(1,Colors.red),
              buildKey(2,Colors.yellow),
              buildKey(3,Colors.orange),
              buildKey(4,Colors.green),
              buildKey(5,Colors.purple),
              buildKey(6,Colors.indigo),
              buildKey(7,Colors.teal),
            ],
          ),

        ),
      ),
    );
  }
}
