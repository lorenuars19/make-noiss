import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound/flutter_sound_player.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Make Some Noiss';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: NoissMaker(),
      ),
    );
  }
}

class NoissMaker extends StatelessWidget {

  FlutterSoundPlayer soundPlayer = new FlutterSoundPlayer();

  static const String _buttonText = 'Make Some Noiss';
  static const double _iconSize = 32;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Ink(
        decoration: const ShapeDecoration(
          color: Colors.purpleAccent,
          shape: CircleBorder(),
        ),
        child: IconButton(
            alignment: Alignment.center,
            icon: const Icon(Icons.volume_up, size: _iconSize),
            color: Colors.white,
            tooltip: _buttonText,
            onPressed: () {
              makeNoiss();
            }),
      ),
    );
  }


  Future<void> makeNoiss() async {
    final fileUri = 'noiss.mp3';
    String result = await soundPlayer.startPlayer(
        fileUri,
        whenFinished: () {
          soundPlayer.stopPlayer();
        }
    );
    soundPlayer.release();
  }
}
