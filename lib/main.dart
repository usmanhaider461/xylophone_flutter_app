import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({dynamic colors, int sound}) {
    return Expanded(
      child: FlatButton(
        color: colors, child: null,

        onPressed: (){
          playSound(sound);
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
              children: [
                buildKey(colors: Colors.redAccent, sound: 1),
                buildKey(colors: Colors.yellowAccent, sound: 2),
                buildKey(colors: Colors.pink, sound: 3),
                buildKey(colors: Colors.purpleAccent, sound: 4),
                buildKey(colors: Colors.lightGreenAccent, sound: 5),
                buildKey(colors: Colors.orangeAccent, sound: 6),
                buildKey(colors: Colors.indigoAccent, sound: 7),

              ],
            )
        ),
      ),

    );



  }
}

