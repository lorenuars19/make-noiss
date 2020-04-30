import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Make Some Noiss';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: NoissMaker(),
      ),
    );
  }
}

class NoissMaker extends StatelessWidget {
  @override
  static const String _buttonText = 'Make Some Noiss';
  static const double _iconSize = 256.0;
  Widget build(BuildContext context) {
    return Center(
      widthFactor: _iconSize,
      heightFactor: _iconSize,
       child: IconButton(
          icon: const Icon(Icons.volume_up, size: _iconSize),
          tooltip: _buttonText,
          onPressed: () {
            makeNoiss();
          }
        ),
    );
  }

  void makeNoiss() {
    // TODO make some noiss
  }
}

