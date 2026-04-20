import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '/presentation/screens/piano/widgets/piano_key.dart';

class PianoScreen extends StatelessWidget {
  const PianoScreen({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          PianoKey(color: Colors.red, onTap: () => playSound(1)),
          PianoKey(color: Colors.orange, onTap: () => playSound(2)),
          PianoKey(color: Colors.yellow, onTap: () => playSound(3)),
          PianoKey(color: Colors.green, onTap: () => playSound(4)),
          PianoKey(color: Colors.teal, onTap: () => playSound(5)),
          PianoKey(color: Colors.blue, onTap: () => playSound(6)),
          PianoKey(color: Colors.purple, onTap: () => playSound(7)),
        ],
      ),
    );
  }
}
