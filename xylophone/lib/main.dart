// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int a) {
    final player = AudioPlayer();
    player.play(AssetSource('note$a.wav'));
  }

  Expanded note({Color colors = Colors.blue, required int soundNumber}) {
    return Expanded(
      child: InkWell(
        child: Container(color: colors),
        onTap: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            note(colors: Colors.red, soundNumber: 1),
            note(colors: Colors.orange, soundNumber: 2),
            note(colors: Colors.yellow, soundNumber: 3),
            note(colors: Colors.green, soundNumber: 4),
            note(colors: Colors.teal, soundNumber: 5),
            note(colors: Colors.blue, soundNumber: 6),
            note(colors: Colors.purple, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
