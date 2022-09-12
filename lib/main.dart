// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded keys({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color),
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
            children: [
              keys(color: Colors.red, soundNumber: 1),
              keys(color: Colors.orange, soundNumber: 2),
              keys(color: Colors.yellow, soundNumber: 3),
              keys(color: Colors.green, soundNumber: 4),
              keys(color: Colors.blue[800], soundNumber: 5),
              keys(color: Colors.teal, soundNumber: 6),
              keys(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
